class MailoutsController < ApplicationController
  def new
    @mailout = Mailout.new
    render('mailouts/new.html.erb')
  end

  def create
    @card = Card.find(params[:card_id])
    Mailout.send_card(@card, params)
    redirect_to("/cards/#{@card.slug}")
  end
end
