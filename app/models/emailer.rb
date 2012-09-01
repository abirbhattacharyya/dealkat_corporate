class Emailer < ActionMailer::Base
  default_url_options[:host] = "www.dealkat.com"

  def signup(email, contact, email_bcc = '', sent_at = Time.now)
  	@contact = contact
    subject    'Someone signed-up on Dealkat'
    recipients email
    bcc email_bcc

    from       sender_email
    sent_on    sent_at
    content_type 'text/html'
  end

  protected

  def sender_email
      "\"Dealkat\" <dealkat@dealkat.com>"
  end
end
