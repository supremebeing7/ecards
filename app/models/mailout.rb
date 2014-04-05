class Mailout
  def initialize(params)
    @your_name = params[:your_name]
    @friend_name = params[:friend_name]
    @email = params[:email]
  end

  def self.send_card(card, params)
    @mailout = Mailout.new(params[:mailout])
    MailoutMailer.card_email(card, @mailout)
  end
end
