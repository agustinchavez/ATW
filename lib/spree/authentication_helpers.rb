# This file was originally generated by the spree:custom_user generator
# in solidus 2.11.4. You can customize the helper method
# implementations for your custom auth solution.

module Spree
  module CurrentUserHelpers
    def self.included(receiver)
      receiver.send :helper_method, :spree_current_user
    end

    def spree_current_user
      current_user
    end
  end

  module AuthenticationHelpers
    def self.included(receiver)
      receiver.send :helper_method, :spree_login_path
      receiver.send :helper_method, :spree_signup_path
      receiver.send :helper_method, :spree_logout_path
      receiver.send :helper_method, :spree_current_user
    end

    def spree_current_user
      current_user
    end

    def spree_login_path
      main_app.login_path
    end

    def spree_signup_path
      main_app.signup_path
    end

    def spree_logout_path
      main_app.logout_path
    end
  end
end

ApplicationController.send :include, Spree::AuthenticationHelpers
ApplicationController.send :include, Spree::CurrentUserHelpers

Spree::Api::BaseController.send :include, Spree::CurrentUserHelpers
