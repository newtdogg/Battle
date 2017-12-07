def sign_in_and_play
  visit '/home'
  fill_in('player_1_name', with: 'John')
  fill_in('player_2_name', with: 'Dave')
  click_button('submit')
end
