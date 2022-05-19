class ReviewsController < ActionController::Base

  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
    @restaurants = Restaurant.new
  end

  def new
    @review = Review.new
  end

  def create
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "restaurants/show"
    end
  end

    private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
