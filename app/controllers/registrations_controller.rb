class RegistrationsController < Devise::RegistrationsController
  protected

  private
    def sign_up_params
      params.require(:user).permit(:fname,:contact,:email,:password,:is_realtor,:is_hunter,:contact_mode,:company_id)
     # params.require(:user).permit(:fname,:email,:password,:is_realtor,:is_hunter,:company_id)
    end
    def account_update_params
      params.require(:user).permit(:fname,:contact,:contact_mode,:email,:password,:password_confirmation,:current_password,:is_hunter,
                                   :is_realtor,:company_id)
    end
end