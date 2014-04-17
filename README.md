Htauthentication
=============


Installation
-----------

    gem 'htauthentication', git: 'git://github.com/cajusber/htauthentication.git'
    

### Classes

    class User < ActiveRecord::Base
      has_htpasswd_login
    end
    
    
    
Constant
-----------

    HTPASSWD_PATH = "/path/to/htpasswd"
    
    
    
Usage
-----------

    @user.authenticate_by_htpasswd(params[:password])
    
returns true or false. If true: sets @user.htpasswd_logged_in = true


