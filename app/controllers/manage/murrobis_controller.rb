class Manage::MurrobisController < Manage::ApplicationController
  prepend_before_filter :draw_password, only: :update
  before_action :set_murrobi, only: [:show, :edit, :update, :destroy]
  before_action :set_select, except: [:show, :index, :destroy]

  def index
    @murrobis = Murrobi.page(params[:page])
  end

  def show
  end

  def new
    @murrobi = Murrobi.new
  end

  def edit
  end

  def create
    @murrobi = Murrobi.new(murrobi_params)

    if @murrobi.save
      flash[:notice] = "Murrobi was successfully created."
      redirect_to manage_murrobis_path
    else
      flash[:error] = @murrobi.errors.full_messages
      render :new
    end
  end

  def update
    if @murrobi.update(murrobi_params)
      flash[:notice] = 'Murrobi was successfully updated.'
      redirect_to manage_murrobis_path
    else
      flash[:error] = @murrobi.errors.full_messages
      render :edit
    end
  end

  def destroy
    @murrobi.destroy
    flash[:notice] = 'Murrobi was successfully destroy.'
    redirect_to manage_murrobis_path
  end

  private
    def draw_password
      %w(password password_confirmation).each do |attr|
        params[:murrobi].delete(attr)
      end if params[:murrobi] && params[:murrobi][:password].blank?
    end

    def set_murrobi
      @murrobi = Murrobi.find(params[:id])
    end

    def set_select
      @groups = [['Akhwat', 'akhwat'], ['Ikhwan', 'ikhwan']]
    end

    def murrobi_params
      params.require(:murrobi).permit(:name, :alamat, :email, :no_telp, :password, :pin_bb,
                                      :facebook, :twitter, :role_id, :parent_id, :group)
    end

end