class ExperiencesController < ApplicationController
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

  def new
  end

  def index

  end

  private

  def experience_params
    params.require(:experience).permit(:title, :date, :place, :image, :content)
  end
end
