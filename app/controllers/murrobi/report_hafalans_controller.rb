class Murrobi::ReportHafalansController < Manage::ApplicationController
  before_action :set_report_hafalan, only: [:show, :edit, :update, :destroy]
  before_action :set_select, only: [:new, :create, :edit, :update]

  def index
    murrobi = Murrobi.find current_user.id
    @report_hafalans = ReportHafalan.by_murrobi(murrobi).page(params[:page])
  end

  def show
  end

  def new
    @report_hafalan = ReportHafalan.new
  end

  def edit
  end

  def create
    @report_hafalan = ReportHafalan.new(report_hafalan_params)

    if @report_hafalan.save
      flash[:notice] = "ReportHafalan was successfully created."
      redirect_to report_hafalans_path
    else
      flash[:error] = @report_hafalan.errors.full_messages
      render :new
    end
  end

  def update
    if @report_hafalan.update(report_hafalan_params)
      flash[:notice] = 'ReportHafalan was successfully updated.'
      redirect_to report_hafalans_path
    else
      flash[:error] = @report_hafalan.errors.full_messages
      render :edit
    end
  end

  def destroy
    @report_hafalan.destroy
    flash[:notice] = 'ReportHafalan was successfully destroy.'
    redirect_to report_hafalans_path
  end

  private
    def set_report_hafalan
      @report_hafalan = ReportHafalan.find(params[:id])
    end

    def set_select
      @mamums = Mamum.filter_by_murrobi(current_user)
      @surahs = Surah.all
    end

    def report_hafalan_params
      params.require(:report_hafalan).permit(:user_id, :surah_id, :from_ayat, :to_ayat)
    end

end