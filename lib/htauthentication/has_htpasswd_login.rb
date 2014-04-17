module Htauthentication
  module HasHtpasswdLogin
  
    extend ActiveSupport::Concern
 
    included do
    end
    
    module ClassMethods
      def has_htpasswd_login
        cattr_accessor :htpasswd_logged_in
        self.htpasswd_logged_in = false
        include Htauthentication::HasHtpasswdLogin::LocalInstanceMethods
      end
    end
    
    module LocalInstanceMethods
      def authenticate_by_htpasswd password
        File.open(HTPASSWD_PATH, "r").each_line do |line|
         next if ["#", "/", "*"].include?(line.strip.first) || line !~ /^.+:.+$/
         (name, pw) = line.chomp.split(":")
         if name == self.username && pw == password.crypt(pw)
           self.htpasswd_logged_in = true
           return true
         end
        end
        false
      end
    end
    
  end
end

ActiveRecord::Base.send :include, Htauthentication::HasHtpasswdLogin
