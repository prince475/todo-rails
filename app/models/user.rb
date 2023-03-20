class User < ApplicationRecord
  # adding a helper for bycript creates getter and setter methods.
  has_secure_password
end
