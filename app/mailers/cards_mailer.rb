class CardsMailer < ActionMailer::Base
  default from: 'example@epicodus.com'

  def card_email(card)
    @card = card
    @url = '/cards'
  end
end


# PLACED IN _form.html, after <%= form_for @card,
# :url => "/cards",
