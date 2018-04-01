namespace :db do
  task update_full_name_for_clients: :environment do
    Client.find_each do |client|
      client.update_attribute :full_name, [client.first_name, client.last_name].join(' ')
    end
  end
end