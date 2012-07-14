class ApplicationController < ActionController::Base
  
  protect_from_forgery
  respond_to :html, :mobile
  before_filter :authenticate_user!, :except => [ :index ]
  
  private
    def mobile_device?
      if session[:mobile_param]
        session[:mobile_param] == "1"
      else
        request.user_agent =~ /Mobile|webOS/
      end
    end
    helper_method :mobile_device?

    def prepare_for_mobile
      session[:mobile_param] = params[:mobile] if params[:mobile]
      request.format = :mobile if mobile_device?
    end
  
end
