class ApplicationController < ActionController::Base

  # helper_method :spree_current_user
  # helper_method :spree_login_path
  # helper_method :spree_signup_path
  # helper_method :spree_logout_path
  #
  # def spree_current_user
  #   # current_user
  # end
  #
  # def spree_login_path
  #   login_path
  # end
  #
  # def spree_signup_path
  #   signup_path
  # end
  #
  # def spree_logout_path
  #   logout_path
  # end

  include Spree::AuthenticationHelpers
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Store
  helper 'spree/base'

end
