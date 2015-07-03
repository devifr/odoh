class Manage::SurahsController < Manage::ApplicationController
  before_action :set_surah, only: [:show, :edit, :update, :destroy]

  def index
    @surahs = Surah.page(params[:page])
  end

  def show
  end

  def new
    @surah = Surah.new
  end

  def edit
  end

  def create
    @surah = Surah.new(surah_params)

    if @surah.save
      flash[:notice] = "Surah was successfully created."
      redirect_to manage_surahs_path
    else
      flash[:error] = @surah.errors.full_messages
      render :new
    end
  end

  def update
    if @surah.update(surah_params)
      flash[:notice] = 'Surah was successfully updated.'
      redirect_to manage_surahs_path
    else
      flash[:error] = @surah.errors.full_messages
      render :edit
    end
  end

  def destroy
    @surah.destroy
    flash[:notice] = 'Surah was successfully destroy.'
    redirect_to manage_surahs_path
  end

  private
    def set_surah
      @surah = Surah.find(params[:id])
    end

    def surah_params
      params.require(:surah).permit(:name, :total)
    end

end