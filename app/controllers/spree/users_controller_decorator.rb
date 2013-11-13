module Spree
  UsersController.class_eval do
    def method1
      if spree_current_user.present?
      	@user = spree_current_user
      else
        flash[:error] = "Please login"
        redirect_to root_path
      end
    end

    def method2
      user_params = params.require(:user).permit(
        :first_name,
        :last_name,
        :mobile_number,
        :landline_number,
        :gender)
      spree_current_user.update_attributes(user_params)
      flash[:notice] = "Profile Updated"
      redirect_to user_spree_user_user_profile_path
    end
  end
end
