class SpamController < ApplicationController

  def send_spam
    #toimi#Spammer.send_email.deliver
    from = params[:from_email].empty? ? "jamo@jamo.fi": params[:from_email]
    
    to = params[:to_email].empty? ? "jamo@isotalo.fi" : params[:to_email]
    message = params[:html_message].empty? ?  "<h1>Testing systems</h1>": params[:html_message]
    subject = params[:subject].empty? ? "otsikko" : params[:subject]
    Spammer.send_email(message, subject, to, from).deliver
    redirect_to spam_index_path
    
  end
  
end
