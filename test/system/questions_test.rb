require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "h1", text: "ASK A QUESTION!"
  end

  test "saying something nice yields a grumpy response" do
    visit ask_url
    fill_in "question", with: "YOU LOOK NICE TODAY"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
    take_screenshot
  end
end
