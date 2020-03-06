feature 'Hitpoints' do
  scenario 'view Player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Computer: 60HP'
  end
  scenario 'view player 1 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Patrick: 60HP'
  end
end
