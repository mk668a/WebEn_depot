require 'test_helper'

class AirticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @airticle = airticles(:one)
  end

  test "should get index" do
    get airticles_url
    assert_response :success
  end

  test "should get new" do
    get new_airticle_url
    assert_response :success
  end

  test "should create airticle" do
    assert_difference('Airticle.count') do
      post airticles_url, params: { airticle: { abstract: @airticle.abstract, affiliation: @airticle.affiliation, contactaddress: @airticle.contactaddress, name: @airticle.name, phonenumber: @airticle.phonenumber, title: @airticle.title } }
    end

    assert_redirected_to airticle_url(Airticle.last)
  end

  test "should show airticle" do
    get airticle_url(@airticle)
    assert_response :success
  end

  test "should get edit" do
    get edit_airticle_url(@airticle)
    assert_response :success
  end

  test "should update airticle" do
    patch airticle_url(@airticle), params: { airticle: { abstract: @airticle.abstract, affiliation: @airticle.affiliation, contactaddress: @airticle.contactaddress, name: @airticle.name, phonenumber: @airticle.phonenumber, title: @airticle.title } }
    assert_redirected_to airticle_url(@airticle)
  end

  test "should destroy airticle" do
    assert_difference('Airticle.count', -1) do
      delete airticle_url(@airticle)
    end

    assert_redirected_to airticles_url
  end
end
