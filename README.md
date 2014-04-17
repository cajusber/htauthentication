= Htauthentication


### Classes

    class User < ActiveRecord::Base
      has_htpasswd_login
    end
    
    
    
Constant
-----------

    HTPASSWD_PATH = "/path/to/htpasswd"
    
    
    
Installation
-----------

    gem install github-markup

