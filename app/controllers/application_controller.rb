class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def erb
	  fullpath="#{params[:path]}.erb"
	  render file: fullpath#, layout:"#{Rails.root}/#{fullpath}"#, :formats => ['']
  end
end
