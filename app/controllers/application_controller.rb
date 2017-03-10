class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :genre, :birthday, :city, :taille, :poids,:situation, :annonce,
        :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :coleuryeux, :typecheveux, :longcheveux, :colcheveu )}
    devise_parameter_sanitizer.permit(:sign_in){ |u| u.permit(:username, :email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update){ |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :city, :taille, :poids,:situation, :annonce,
        :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :coleuryeux, :typecheveux, :longcheveux, :colcheveu)}
  end
end
