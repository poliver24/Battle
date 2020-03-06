feature 'switching turns' do
    context 'seeing the current turn' do
        scenario 'at the start of the game' do
        sign_in_and_play
        expect(page).to have_content "Patrick's turn"
        end

        scenario 'after player 1 attacks' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).not_to have_content "Patrick's turn"
        expect(page).to have_content "Computer's turn"
        end
    end
end