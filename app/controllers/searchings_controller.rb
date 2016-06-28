class SearchingsController < ApplicationController

  def new
    @search = Searching.new
    @categories = Book.uniq.pluck(:category)
  end

  def create
    @search = Searching.create(search_params)
    redirect_to @search
  end

  def show
    @search = Searching.find(params[:id])
  end



  private

  def search_params
    params.require(:searching).permit(:keywords, :category, :min_price, :max_price, :isbn)
  end

end
