require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "John-Henry Liberty" }

  describe "Home page" do

    it "should have the content 'John-Henry Liberty'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
  end

  describe "About page" do

  	it "should have the content 'About me' " do
	  	visit '/static_pages/about'
	  	expect(page).to have_title("#{base_title} | About me")
  	end
  end
end