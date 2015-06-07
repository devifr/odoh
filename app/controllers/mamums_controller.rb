class MamumsController < ApplicationController
  prepend_before_filter :draw_password, only: :update
  before_action :set_mamum, only: [:show, :edit, :update, :destroy]
  before_action :set_select, except: [:show, :index, :destroy]

  def index
    @mamums = Mamum.page(params[:page])
  end

  def show
  end

  def new
    @mamum = Mamum.new
  end

  def edit
  end

  def create
    @mamum = Mamum.new(mamum_params)

    if @mamum.save
      flash[:notice] = "Mamum was successfully created."
      redirect_to mamums_path
    else
      flash[:error] = @mamum.errors.full_messages
      render :new
    end
  end

  def update
    if @mamum.update(mamum_params)
      flash[:notice] = 'Mamum was successfully updated.'
      redirect_to mamums_path
    else  
      flash[:error] = @mamum.errors.full_messages
      render :edit
    end
  end

  def destroy
    @mamum.destroy
    flash[:notice] = 'Mamum was successfully destroy.'
    redirect_to mamums_path
  end

  def get_murrobis
    @murrobis = Murrobi.filter_by_group(params[:group])
    render :select, layout: false
  end

  private
    def draw_password
      %w(password password_confirmation).each do |attr|
        params[:mamum].delete(attr)
      end if params[:mamum] && params[:mamum][:password].blank?
    end

    def set_mamum
      @mamum = Mamum.find(params[:id])
    end


    def set_select
      @groups = [['Akhwat', 'akhwat'], ['Ikhwan', 'ikhwan']]
    end

    def mamum_params
      params.require(:mamum).permit(:name, :alamat, :email, :no_telp, :password, :pin_bb, 
                                      :facebook, :twitter, :role_id, :parent_id, :group)
    end

end