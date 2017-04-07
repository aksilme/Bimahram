class FriendshipMailer < ApplicationMailer
  def create_friendship(user)
    @user = user
    mail(to: @user.email, subject: "Demande de contacte reçu")
  end

  def accept_friendship(user)
    @user = user
    mail(to: @user.email, subject: "Votre demande a été acceptée")
  end
end
