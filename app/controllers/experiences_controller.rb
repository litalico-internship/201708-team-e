class ExperiencesController < ApplicationController

  def index
  end

  def show
    @experience = Experience.find(params[:id])
  end

  def new
  end

  def create
    # experience = params.require(:experience).permit(:title, :host, :date, :place, :content)
    @experience = Experience.new(experience_params)

    respond_to do |format|
      if @experience.save
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
