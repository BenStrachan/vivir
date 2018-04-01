module ApplicationHelper
  def client_options_for_app
    clients = Client.where(location_id: current_user.locations.pluck(:id))
    options = []

    clients.each do |client|
      options << [client.full_name, client.id]
    end

    options
  end
end
