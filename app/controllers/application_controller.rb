# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, with: :render_404
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
    return if logged_in?

    store_location
    flash[:danger] = 'Please log in.'
    redirect_to login_url
  end

  def render_404
    render file: Rails.root.join('public', '404.html'), layout: false, status: :not_found
  end
end
