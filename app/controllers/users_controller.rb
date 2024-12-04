class UsersController < ApplicationController
    before_action:autheticate_user!
    
    def show
        @user = current_user
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        if @user.update(user_params)
            redirect_to @user, notice: 'Profile was successfully updated.'
        else
            render :edit
        end
    end


    private

    
    def user_params
        params.require(:user).permit(:nickname, :age, :gender, :prefered_time, :profile_picture, :status, :notification)
  end
end
