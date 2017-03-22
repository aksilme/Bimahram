module UsersHelper
  def action_buttons(user)
    case current_user.friendship_status(user) when "friends"
      "Supprimer la demande"
      when "pending"
         "annuler la demande"
      when "requested"
         "Accepter"
      when "not_friends"
        "Envoyer une demande"
    end
  end

end
