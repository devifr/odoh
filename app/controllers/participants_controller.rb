class ParticipantsController < FrontendController
  before_action :prepare_news
  def index
    @participants = Mamum.page(params[:page])
  end

  def show
    @participant = Mamum.find(params[:id])
  end

  def prepare_news
    @news = News.limit(10)
  end

end