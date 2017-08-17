require 'test_helper'

class MyPlanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_planet = my_planets(:one)
  end

  test "should get index" do
    get my_planets_url
    assert_response :success
  end

  test "should get new" do
    get new_my_planet_url
    assert_response :success
  end

  test "should create my_planet" do
    assert_difference('MyPlanet.count') do
      post my_planets_url, params: { my_planet: { description: @my_planet.description, name_planet: @my_planet.name_planet, radius: @my_planet.radius } }
    end

    assert_redirected_to my_planet_url(MyPlanet.last)
  end

  test "should show my_planet" do
    get my_planet_url(@my_planet)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_planet_url(@my_planet)
    assert_response :success
  end

  test "should update my_planet" do
    patch my_planet_url(@my_planet), params: { my_planet: { description: @my_planet.description, name_planet: @my_planet.name_planet, radius: @my_planet.radius } }
    assert_redirected_to my_planet_url(@my_planet)
  end

  test "should destroy my_planet" do
    assert_difference('MyPlanet.count', -1) do
      delete my_planet_url(@my_planet)
    end

    assert_redirected_to my_planets_url
  end
end
