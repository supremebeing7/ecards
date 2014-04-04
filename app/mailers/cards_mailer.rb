class CardsMailer < ActionMailer::Base
  default from: 'example@epicodus.com'

  def card_email(card)
    @card = card
    @url = '/cards'
  end
end
