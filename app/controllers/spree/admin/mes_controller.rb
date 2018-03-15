class Spree::Admin::MesController < Spree::Admin::ResourceController

  before_action :set_mobility

  def index
    @me = Spree::Me.first_or_initialize
  end

  def create
    redirect_to admin_mes_url
  end

  def update
    redirect_to admin_mes_url
  end

  def mobility
    session[:mobility_locale] = params[:mobility_locale]
    redirect_to admin_mes_url
  end

  private
  def me_params
    params.require(:me).permit!
  end

  def set_mobility
    if session[:mobility_locale]
      Mobility.locale = session[:mobility_locale]
    end
  end

end
