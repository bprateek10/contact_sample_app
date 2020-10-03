class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    locale = I18n.default_locale
    locale = params[:locale] if params[:locale].present? && I18n.available_locales.include?(params[:locale].to_sym)
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale } 
  end

end
