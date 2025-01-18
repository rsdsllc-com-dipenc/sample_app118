class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  before_action :set_welcome_message

  private
  def set_welcome_message
    @welcome_message = ENV["WELCOME_MESSAGE"]
  end
end
