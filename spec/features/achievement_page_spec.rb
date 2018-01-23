require 'rails_helper'

feature 'achievement page' do 
    scenario 'achievement public page' do
        achievement = Achievementt.create(title: 'just did it')
        visit("/achievementts/#{achievement.id}")
        
        expect(page).to have_content('just did it')
    end
end