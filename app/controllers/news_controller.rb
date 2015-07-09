class NewsController < FrontendController

  def index
    @news = News.page(params[:page])
    @latest_news = News.limit(5)
  end

  def show
    @news = News.find(params[:id])
  end

end