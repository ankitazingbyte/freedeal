class RegistrationsController < Devise::RegistrationsController
  prepend_before_action :require_no_authentication, only: [:new, :create]

  protected
	def after_sign_up_path_for(resource)
		debugger
		current_user.add_role params[:role]
		root_url
	end 
end