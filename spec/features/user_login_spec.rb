require 'rails_helper'

RSpec.feature "UserLogins", type: :feature, js:true do
  
  before :each do
    @user = User.create! name: 'Peppa', last_name: 'Pig', email: 'peppa@gmail.com', password: '123456'
  end

  scenario "Users can login and are taken to home page" do
    # ACT
    visit '/login'
    fill_in 'email', with: 'peppa@gmail.com'
    fill_in 'password', with: '123456'
    click_on 'Submit'

    # DEBUG / VERIFY
    
    #VERIFY
    expect(page).to have_content('Products')
    expect(page).to have_content('Signed in as Peppa')
    save_screenshot
  end


end
