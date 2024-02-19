require "test_helper"

class InternsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intern = interns(:one)
  end

  test "should get index" do
    get interns_url
    assert_response :success
  end

  test "should get new" do
    get new_intern_url
    assert_response :success
  end

  test "should create intern" do
    assert_difference("Intern.count") do
      post interns_url, params: { intern: { index: @intern.index, value: @intern.value } }
    end

    assert_redirected_to intern_url(Intern.last)
  end

  test "should show intern" do
    get intern_url(@intern)
    assert_response :success
  end

  test "should get edit" do
    get edit_intern_url(@intern)
    assert_response :success
  end

  test "should update intern" do
    patch intern_url(@intern), params: { intern: { index: @intern.index, value: @intern.value } }
    assert_redirected_to intern_url(@intern)
  end

  test "should destroy intern" do
    assert_difference("Intern.count", -1) do
      delete intern_url(@intern)
    end

    assert_redirected_to interns_url
  end
end
