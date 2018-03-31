module Admin
class BusinessesController < BaseController
  before_action :set_business, only: [:profile, :update]

  def profile
  end

  def update
    if @business.update(business_params)
      redirect_to profile_admin_businesses_path,
                  notice: 'Business was successfully updated.'
    else
      render :profile
    end
  end



  private
    def set_business
      @business = current_user.business
    end

    def business_params
      params.require(:business).permit(:name, :phone, :email, :website, :address, :city, :state, :postcode, :country)
    end
end
end
