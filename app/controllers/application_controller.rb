class ApplicationController < ActionController::Base

    # URLからlocateを抽出し、locateを設定する??
    # TODO:
    #     around_action :switch_locale
    #     I18n.with_locale(locale, &action)
    around_action :switch_locale
    def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
    end

    # URLにlocateを加える
    def default_url_options
        { locale: I18n.locale }
    end

end
