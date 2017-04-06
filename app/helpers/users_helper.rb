module UsersHelper
  def action_buttons(user)
    case current_user.friendship_status(user) when "friends"
       link_to "Supprimer la demande", friendship_path(current_user.friendship_relation(user)), method: :delete, class: 'btn btn-default'
      when "pending"
        link_to "Supprimer ma demande", friendship_path(current_user.friendship_relation(user)), method: :delete,  class: 'btn btn-default'
      when "requested"
        link_to "accepter la demande", accept_friendship_path(current_user.friendship_relation(user)), method: :put,  class: 'btn btn-default'
      when "not_friends"
        link_to "Envoyer une demande", friendships_path(user_id: user.id), method: :post, class: 'btn btn-default'
    end
  end

end
