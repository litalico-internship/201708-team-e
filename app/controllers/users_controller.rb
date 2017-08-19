class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def show

  end

  def update
    # @user = User.new(host_params)

    respond_to do |format|
      if @user.update(host_params)
        format.html { redirect_to @user, notice: 'Host Detail was successfully created.' }
      else
        format.html { render :edit }
      end
    end

  end

  def edit

  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def host_params
    params.require(:user).permit(:detail)
  end
end
