module Locomotive
  module MyAccountHelper

    def options_for_locale
      Rails.cache.fetch("#{Locomotive::VERSION}/views/helpers/options_for_locale") do
        Locomotive.config.locales.map do |locale|
          [
            I18n.t("locomotive.locales.#{locale}"),
            locale,
            {}
          ]
        end
      end
    end

  end
end
