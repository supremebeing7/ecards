class CardsController < ApplicationController
  def index
    @cards = Card.all
    render('cards/index.html.erb')
  end

  def new
    @card = Card.new
    render('cards/new.html.erb')
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      params[:card][:slug] = ("#{@card.id}-#{@card.name}").parameterize
      @card.update(params[:card])
      redirect_to("/cards")
    else
      render('cards/new.html.erb')
    end
  end

  def show
    @card = Card.find_by(slug: params[:id])
    render('cards/show.html.erb')
  end

  def edit
    @card = Card.find_by(slug: params[:id])
    render('cards/edit.html.erb')
  end

  def update
    @card = Card.find(params[:id])
    if @card.update(params[:card])
      redirect_to "/cards"
    else
      render('cards/edit.html.erb')
    end
  end

  def destroy
    @card = Card.find_by(slug: params[:id])
    @card.destroy
    redirect_to "/cards"
  end

  private

  def card_params
    params.require(:card).permit(:card_image, :name, :slug)
  end
end
