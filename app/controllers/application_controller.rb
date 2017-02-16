class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want tinclude SessionsHelpero use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper


      # ユーザーのログインを確認する
      def logged_in_user
        unless logged_in?
          store_location
          flash[:danger] = "Please log in."
          redirect_to login_url
        end
      end
  end
