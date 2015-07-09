class NewsController < FrontendController

  def index
    @news = News.page(params[:page])
  end

  def show
    @news = News.find(params[:id])
  end

end