require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit questions_url
  #
  #   assert_selector "h1", text: "Questions"
  # end
  test "visiting /ask renders the form" do
    visit ask_url
    take_screenshot
    puts "testing"
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    take_screenshot
    puts "testing II"
    fill_in "question", with: "I am going to work right now!"
    # fill_in "question", with: "Hello"
    click_on "Askeme!"

    assert_text "Great!"
    # assert_text "I don't care, get dressed and go to work!"
  end
end
