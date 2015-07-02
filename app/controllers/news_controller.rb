class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  def index
    @news = News.page(params[:page])
  end

  def show
  end

  def new
    @news = News.new
  end

  def edit
  end

  def create
    @news = News.new(news_params)

    if @news.save
      flash[:notice] = "News was successfully created."
      redirect_to news_index_path
    else
      flash[:error] = @news.errors.full_messages
      render :new
    end
  end

  def update
    if @news.update(news_params)
      flash[:notice] = 'News was successfully updated.'
      redirect_to news_index_path
    else
      flash[:error] = @news.errors.full_messages
      render :edit
    end
  end

  def destroy
    @news.destroy
    flash[:notice] = 'News was successfully destroy.'
    redirect_to news_index_path
  end

  private
    def set_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title, :body, :author, :images)
    end

end