class Admin < ActiveRecord::Base
  devise :database_authenticatable, :trackable, :timeoutable
    attr_accessible :email, :password, :password_confirmation
end
