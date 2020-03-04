feature 'Hitpoints' do
  scenario 'view Player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Computer: 60HP'
  end
end
