# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
    render html: '¡hola, mundo!'
  end

  def goodbye
    render html: '¡goodbye, mundo!'
  end

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = 'Please log in.'
      redirect_to login_url
    end
  end
end
