module Locomotive
  module Concerns
    module TimezoneController

      protected

      def set_timezone
        Time.zone = current_site.try(:timezone) || 'UTC'
      end

    end
  end
end
