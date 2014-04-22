Htauthentication
=============

Htauthentication lets you authenticate users by an htpasswd file.


Installation
-----------

    Running fast:

        gem install htauthentication

    Hook up your Gemfile:

        gem "htauthentication"
    

### Classes

    class User < ActiveRecord::Base
      has_htpasswd_login
    end
    
### Constant

    HTPASSWD_PATH = "/path/to/htpasswd"
     
    
Usage
-----------

    @user = User.new(username: params[:username])
    @user.authenticate_by_htpasswd(params[:password])
    
The second line returns true or false, depending on whether the authentication by the htpasswd 
file was successful. If true: sets @user.htpasswd_logged_in = true, otherwise = false.

By default Htauthentication uses the attribute "username" to authenticate. If you want 
to use an alternative attribute you can add its name as another parameter.

    @user.authenticate_by_htpasswd(params[:password], "email")


