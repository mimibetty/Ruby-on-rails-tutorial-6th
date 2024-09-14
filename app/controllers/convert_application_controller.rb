# frozen_string_literal: true

class ConvertApplicationController < ActionController::Base
  def hello
    render html: '¡hola, mundo!'
  end

  def goodbye
    render html: '¡goodbye, mundo!'
  end
end
