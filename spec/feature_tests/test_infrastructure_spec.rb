
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
    visit '/home'
    fill_in('player_1_name', with: 'John')
    fill_in('player_2_name', with: 'Dave')
    click_button('submit')
    expect(page).to have_content('John')
    expect(page).to have_content('Dave')
  end

  feature 'HP' do
    scenario "player 1 should be able to see Player 2's HP" do
      visit '/battle'
      expect(page).to have_content("health = 100")
    end
  end
end
