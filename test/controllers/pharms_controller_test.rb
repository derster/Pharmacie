require 'test_helper'

class PharmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pharm = pharms(:one)
  end

  test "should get index" do
    get pharms_url
    assert_response :success
  end

  test "should get new" do
    get new_pharm_url
    assert_response :success
  end

  test "should create pharm" do
    assert_difference('Pharm.count') do
      post pharms_url, params: { pharm: { adresse: @pharm.adresse, commune: @pharm.commune, description: @pharm.description, h_closing: @pharm.h_closing, h_openning: @pharm.h_openning, lat: @pharm.lat, long: @pharm.long, owner_name: @pharm.owner_name, pharma_name: @pharm.pharma_name, speciality: @pharm.speciality, sub_owner_name: @pharm.sub_owner_name, tel: @pharm.tel } }
    end

    assert_redirected_to pharm_url(Pharm.last)
  end

  test "should show pharm" do
    get pharm_url(@pharm)
    assert_response :success
  end

  test "should get edit" do
    get edit_pharm_url(@pharm)
    assert_response :success
  end

  test "should update pharm" do
    patch pharm_url(@pharm), params: { pharm: { adresse: @pharm.adresse, commune: @pharm.commune, description: @pharm.description, h_closing: @pharm.h_closing, h_openning: @pharm.h_openning, lat: @pharm.lat, long: @pharm.long, owner_name: @pharm.owner_name, pharma_name: @pharm.pharma_name, speciality: @pharm.speciality, sub_owner_name: @pharm.sub_owner_name, tel: @pharm.tel } }
    assert_redirected_to pharm_url(@pharm)
  end

  test "should destroy pharm" do
    assert_difference('Pharm.count', -1) do
      delete pharm_url(@pharm)
    end

    assert_redirected_to pharms_url
  end
end
