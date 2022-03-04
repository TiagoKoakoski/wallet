class CurrenciesController < ApplicationController
  def new
    @currency = Currency.new
  end

  def create
    @currency = Currency.new(params.require(:currency).permit(:name, :code))
    if @currency.save
      flash[:notice] = "Ativo cadastrado com sucesso"
      redirect_to @currency
    else
      flash[:alert] = "Não foi possivel salvar o ativo"
      render new
    end
  end

  def show
    @currency = Currency.find(params[:id])
  end

  def index
    @currencies = Currency.all
  end

end
