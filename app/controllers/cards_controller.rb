class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      params[:card][:slug] = ("#{@card.id}-#{@card.name}").parameterize
      @card.update(params[:card])
      flash[:notice] = "Card added."
      redirect_to cards_path
    else
      render 'new'
    end
  end

  def show
    @card = Card.find_by(slug: params[:id])
  end

  def edit
    @card = Card.find_by(slug: params[:id])
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(params[:card])
      flash[:notice] = "Card updated."
      redirect_to card_path(@card.slug)
    else
      render 'edit'
    end
  end

  def destroy
    @card = Card.find_by(slug: params[:id])
    @card.destroy
    flash[:notice] = "Card deleted."
    redirect_to cards_path
  end

  private

  def card_params
    params.require(:card).permit(:card_image, :name, :slug)
  end
end
