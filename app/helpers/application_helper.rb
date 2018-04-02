module ApplicationHelper
  def client_options_for_app
    clients = Client.where(location_id: current_user.locations.pluck(:id))
    options = []

    clients.each do |client|
      options << [client.full_name, client.id]
    end

    options
  end

  def location_options_for_select(locations)
    options = []

    locations.each do |location|
      options << ["#{location.customer&.business_name} | #{location.name}", location.id]
    end

    options
  end

  def user_options_for_app(users)
    options = []

    users.each do |user|
      options << [user.full_name, user.id]
    end

    options
  end
end
