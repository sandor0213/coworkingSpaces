class ApplicationController < ActionController::Base
before_action :set_locale

    def default_url_options
     { locale: I18n.locale }
   end

    def set_locale
     I18n.locale = params[:locale] || I18n.default_locale
 	  Rails.application.routes.default_url_options[:locale]= I18n.locale 
   end
end
