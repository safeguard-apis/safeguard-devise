class Devise::DeviseSafeguardController < DeviseController
  include Devise::Controllers::Helpers
  
  before_filter :find_resource_and_require_password_checked 

  def GET_verify_safeguard
    render 'verify_safeguard'
  end

  def POST_verify_safeguard
    if token_ok?
      @resource.update_attribute(:last_sign_in_with_safeguard, DateTime.now)

      #remember_device if params[:remember_device].to_i == 1
      if session.delete("#{resource_name}_remember_me") == true && @resource.respond_to?(:remember_me=)
        @resource.remember_me = true
      end
      sign_in(resource_name, @resource)

      set_flash_message(:notice, :signed_in) if is_navigational_format?
      respond_with resource, :location => after_sign_in_path_for(@resource)
    else
      set_flash_message(:error, :invalid_token)
      render :verify_safeguard
    end
  end

  def token_ok?
    resp = Safeguard::API.is_valid?({
      :email => @resource.email,
      :token => params[:safeguard_token]
    })
    resp
  end


  def find_resource
    @resource = send("current_#{resource_name}")

    if @resource.nil?
      @resource = resource_class.find_by_id(session["#{resource_name}_id"])
    end
  end

  def find_resource_and_require_password_checked
    find_resource

    if @resource.nil? || session[:"#{resource_name}_password_checked"].to_s != "true"
      redirect_to invalid_resource_path
    end
  end

  def invalid_resource_path
    root_path
  end
end
