class ExperiencesController < ApplicationController

  def index
    @hosts = UserGroup.includes(:user).where(is_host: 1)
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    @user_group = @experience.user_groups.build(user_id: current_user.id, experience_id: @experience.id, is_host: true)

    respond_to do |format|
      if @experience.save && @user_group.save
        format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

    def experience_params
      params.require(:experience).permit(:title, :date, :place, :image, :content)
    end
end
