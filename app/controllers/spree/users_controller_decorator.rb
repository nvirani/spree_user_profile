module Spree
  UsersController.class_eval do
    def add_person_detail
      if spree_current_user.present?
      	@user = spree_current_user
      else
        flash[:error] = t(:login_message)
        redirect_to root_path
      end
    end

    def update_person_detail
      user_params = params.require(:user).permit(
        :first_name,
        :last_name,
        :mobile_number,
        :landline_number,
        :gender)
      spree_current_user.update_attributes(user_params)
      flash[:notice] = "Profile Updated"
      redirect_to user_spree_user_person_detail_path
    end
  end
end
