module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user.
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  # Remembers a user in a persistent session.
  def remember(user)
    user.remember
    cookies.permanent.encrypted[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Forgets a persistent session.
  def forget(user)
    user.forget
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Returns the user corresponding to the remember token cookie.
  # def current_user
  #   if (user_id = session[:user_id])
  #     @current_user ||= User.find_by(id: user_id)
  #   elsif (user_id = cookies.encrypted[:user_id])
  #     user = User.find_by(id: user_id)
  #     if user && user.authenticated?(cookies[:remember_token])
  #       log_in user
  #       @current_user = user
  #     end
  #   end
  # end

  # Returns the user corresponding to the remember token cookie.
  def current_user
    @current_user ||= find_user_by_session || find_user_by_cookie
  end

  private

  def find_user_by_session
    User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def find_user_by_cookie
    return unless cookies.encrypted[:user_id]

    user = User.find_by(id: cookies.encrypted[:user_id])
    if user&.authenticated?(cookies[:remember_token])
      log_in user
      user
    end
  end
end
