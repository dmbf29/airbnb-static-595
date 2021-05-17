require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit '/'

    assert_selector "h1", text: "Flats"
    # assert_selector ".flat", count: 5
  end

  test "visiting the show" do
    visit '/flats/145'

    assert_selector "h1", text: "Charm at the Steps of the Sacre Coeur/Montmartre"
    # assert_selector ".flat", count: 5
  end

end
