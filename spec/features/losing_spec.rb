feature 'losing' do
    context 'when player1 reaches 0 hp' do
    before do
      sign_in_and_play
      click_button 'Attack'
      allow(Kernel).to receive(:rand).and_return(60)
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Patrick Loses!'
      expect(page).to have_content 'Computer Wins!!'
    end
    end
end