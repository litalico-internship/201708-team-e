class ExperiencesController < ApplicationController

  def index
  end

  def show
    @experience = Experience.find(params[:id])
    binding.pry
    @reviews = Review.all
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

  def update
    @experience = Experience.find(params[:id])
    @review = Review.new(text: review_params[:reviews][:text], rate: review_params[:reviews][:rate], user_id: current_user.id)

    respond_to do |format|
      if @review.save
        format.html { redirect_to @experience, notice: 'Review was successfully created.' }
      else
        format.html { render :show }
      end
    end
  end

  private
    def review_params
      params.require(:experience).permit(reviews: [:text, :rate])
    end

    def experience_params
      params.require(:experience).permit(:title, :date, :place, :image, :content)
    end
end
