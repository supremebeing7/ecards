class MailoutMailer < ActionMailer::Base
  default from: 'epicodusecards@gmail.com'

  def self.card_email(card, mailout)
    @card = card
    @mailout = mailout
    @url = "http://epicodus-ecards.herokuapp.com/cards/#{@card.slug}"
    mail(from: @mailout.your_name to: @mailout.address, subject: "You've received an Epicodus Ecard!")
  end
end
