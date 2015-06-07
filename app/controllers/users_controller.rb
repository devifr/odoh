class UsersController < ApplicationController

  def edit
    @user = current_user
  end

  def update
    if current_user.update(user_params)
      flash[:notice] = 'Murrobi was successfully updated.'
      redirect_to edit_user_path
    else  
      flash[:error] = @murrobi.errors.full_messages
      render :edit
    end

  end

  private
    def draw_password
      %w(password password_confirmation).each do |attr|
        params[:murrobi].delete(attr)
      end if params[:murrobi] && params[:murrobi][:password].blank?
    end

    def user_params
      params.require(:user).permit(:name, :alamat, :email, :no_telp, :pin_bb, 
                                   :facebook, :twitter)
    end
end