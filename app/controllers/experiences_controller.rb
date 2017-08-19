class ExperiencesController < ApplicationController

  def index
  end

  # GET /experiences/1
  # GET /experiences/1.json
  def show
    @experience = Experience.find(params[:id])
    @review = Review.new
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
end
