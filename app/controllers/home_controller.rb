class HomeController < FrontendController
  def index
    @news = News.limit(10)
  end
end