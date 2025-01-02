class ApplicationController < ActionController::Base
  before_action :set_current_request_details
  before_action :authenticate
  helper_method :current_user

  def current_user
    # @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]

    return @current_user if defined?(@current_user)

    if cookies.signed[:session_token]
      session = Session.find_by(id: cookies.signed[:session_token])
      @current_user = session&.user
    end

  end

  private
    def authenticate
      if session_record = Session.find_by_id(cookies.signed[:session_token])
        Current.session = session_record
      else
        redirect_to sign_in_path
      end
    end

    def set_current_request_details
      Current.user_agent = request.user_agent
      Current.ip_address = request.ip
    end
end
