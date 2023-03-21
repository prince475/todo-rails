class ApplicationRecord < ActiveRecord::API
  include ActionController::Cookies

  # protect_from_forgery with: :null_session
  primary_abstract_class


end
