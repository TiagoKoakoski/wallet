class CoinsController < ApplicationController
  def new
    @coin = Coin.new
    @currency = Currency.all
  end

  def create
    @coin = Coin.new(params.require(:coin).permit(:currency_id, :quantity, :price))
    if @coin.save
      flash[:notice] = "Moeda registrada com sucesso"
      redirect_to currency_path(@coin.currency_id)
    else
      flash[:alert] = "Moeda não foi registrada"
      render :new
    end
  end
end
