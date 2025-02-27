# -*- encoding : utf-8 -*-
# Add a callback - to be executed before each request in development,
# and at startup in production - to patch existing app classes.
# Doing so in init/environment.rb wouldn't work in development, since
# classes are reloaded, but initialization is not run each time.
# See http://stackoverflow.com/questions/7072758/plugin-not-reloading-in-development-mode
#
Rails.configuration.to_prepare do
  # Example adding an instance variable to the frontpage controller
  GeneralController.class_eval do
  #   def mycontroller
  #     @say_something = "Greetings friend"
  #   end
    HelpController.class_eval do
      def flossk
        @title = "Floosk"
      end
      def terms_of_use
        @title = "Terms of use"
      end
    end
    def frontpage
      @locale = AlaveteliLocalization.locale
      @country_code = AlaveteliConfiguration.iso_country_code
      AlaveteliLocalization.with_locale(@locale) do
        @public_bodies = PublicBody.visible.
                                    with_tag('all').
                                    with_query(params[:public_body_query], 'all')
      end
    end
  end
  # Example adding a new action to an existing controller
  # HelpController.class_eval do
  #   def help_out
  #   end
  # end
end
