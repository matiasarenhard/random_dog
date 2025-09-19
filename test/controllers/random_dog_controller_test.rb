require "minitest/mock"

class RandomDogControllerTest < ActionDispatch::IntegrationTest
  test "should get index with success response" do
    fake_response = Minitest::Mock.new
    fake_response.expect :success?, true
    fake_response.expect :body, { message: "https://images.dog.ceo/breeds/terrier-silky/n02097658_1154.jpg" }.to_json

    Faraday.stub :get, fake_response do
      get random_dog_url
      assert_response :success
      assert_select "img[src=?]", "https://images.dog.ceo/breeds/terrier-silky/n02097658_1154.jpg"
    end

    fake_response.verify
  end

  test "should handle failed response gracefully" do
    fake_response = Minitest::Mock.new
    fake_response.expect :success?, false

    Faraday.stub :get, fake_response do
      get random_dog_url
      assert_response :success
      assert_select "img", false
      assert_select "div", text: "Sorry, we couldn't fetch a dog image. Please try again!"
    end

    fake_response.verify
  end
end
