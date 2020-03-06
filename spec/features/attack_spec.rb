feature 'Attacking' do
  context 'reducing HP' do
    before do
      allow(Kernel).to receive(:rand).and_return(10)
    end
    scenario 'reduce Player 2 HP by 10' do
      sign_in_and_play
      click_button 'Attack'
      expect(page).not_to have_content 'Computer: 60HP'
      expect(page).to have_content 'Computer: 50HP'
    end
    scenario 'reduce Player 1 HP by 10' do
      sign_in_and_play
      2.times{ click_button 'Attack'}
      expect(page).not_to have_content 'Patrick: 60HP'
      expect(page).to have_content 'Patrick: 50HP'
    end
  end
end
