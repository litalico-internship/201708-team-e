class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]
  def show
    @reviews = @user.reviews
  end

  def update
    respond_to do |format|
      if @user.update(host_params)
        @review = @user.reviews.build(text: review_params[:reviews][:text], rate: review_params[:reviews][:rate], user_id: @user.id)
        if @review.save
          format.html { redirect_to @user, notice: 'Host Detail was successfully created.' }
        end
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

    def review_params
      params.require(:user).permit(reviews: [:text, :rate])
    end
end
