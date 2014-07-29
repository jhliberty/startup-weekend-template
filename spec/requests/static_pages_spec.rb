require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "John-Henry Liberty" }

  describe "Home page" do

    it "should have the base title 'John-Henry Liberty'" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end
  end

  describe "About page" do

  	it "should have the title 'About me' " do
	  	visit '/static_pages/about'
	  	expect(page).to have_title("About me | #{base_title}")
  	end
  end
end