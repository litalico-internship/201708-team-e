class ExperiencesController < ApplicationController
  def create
    experience = params.require(:experience).permit(:title, :host, :date, :place, :content)
    experience.save
  end

  def new
  end

  def index

  end
end
