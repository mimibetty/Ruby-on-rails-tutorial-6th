# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper
  def hello
    render html: '¡hola, mundo!'
  end

  def goodbye
    render html: '¡goodbye, mundo!'
  end
end
