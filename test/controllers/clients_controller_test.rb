require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { business_id: @client.business_id, date_of_birth: @client.date_of_birth, first_name: @client.first_name, job_notes: @client.job_notes, job_type_id: @client.job_type_id, last_name: @client.last_name, location_id: @client.location_id, notes: @client.notes, room: @client.room } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { business_id: @client.business_id, date_of_birth: @client.date_of_birth, first_name: @client.first_name, job_notes: @client.job_notes, job_type_id: @client.job_type_id, last_name: @client.last_name, location_id: @client.location_id, notes: @client.notes, room: @client.room } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
