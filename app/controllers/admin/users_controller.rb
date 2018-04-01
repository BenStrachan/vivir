module Admin
  class UsersController < BaseController
    before_action :authenticate_user!
    before_action :set_user, only: [:edit, :update, :destroy]

    def index
      @users = current_business.users.order(created_at: :desc).page(params[:page])
    end

    def new
      @user = current_business.users.new role: User::ROLE_REGULAR
    end

    def create
      @user = current_business.users.new(user_params)
      if @user.save
        redirect_to admin_users_path, notice: "User has beed created successfully"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      @user.delete
      redirect_to admin_users_path, notice: "User has beed deleted successfully"
    end

    def update
      if @user.update user_params
        redirect_to admin_users_path, notice: "User has beed updated successfully"
      else
        render :edit
      end
    end

    private
    def set_user
      @user =  current_business.users.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :run,
                                   :password, :password_confirmation, :role, location_ids: [])
    end
  end
end
