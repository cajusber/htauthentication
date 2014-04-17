class User < ActiveRecord::Base
  #has_secure_password
  has_htpasswd_login
end
