
feature Battle do
  scenario 'tests the infrastructure is working' do
    visit '/home'
    # puts page.has_content?("Hello Battle!")
    expect(page).to have_content("Hello Battle!")
  end

  scenario 'creates a form to fill in for name' do
    visit '/home'
    expect(page).to have_field('player_1_name')
  end

  scenario 'presents players with the option to press the submit button' do
    visit '/home'
    expect(page).to have_button('submit')
  end

  scenario "players can enter their names" do
    sign_in_and_play
    expect(page).to have_content('John')
    expect(page).to have_content('Dave')
  end

  feature 'HP' do
    scenario "player 1 should be able to see Player 2's HP" do
      sign_in_and_play
      expect(page).to have_content("health = 100")
    end
  end

  feature 'attacking' do
    scenario 'presents player 1 with the option to attack player 2' do
      sign_in_and_play
      expect(page).to have_link('Attack!')
    end

    scenario 'when player 1 attacks player 2 we are taken to the attack page' do
      sign_in_and_play
      click_link("Attack!")
      expect(page).to have_content("Dave was attacked for some damage")
    end
  end
end
