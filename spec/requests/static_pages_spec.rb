require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "John-Henry Liberty" }

  describe "Home page" do

    it "should have the base title 'John-Henry Liberty'" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end

    it "should have an active class on the home link" do
      visit root_path
      expect(page).to have_css("li.active a", text: "Home")
    end
  end

  describe "About page" do

  	it "should have the title 'About me' " do
	  	visit about_path
	  	expect(page).to have_title("About me | #{base_title}")
  	end

    it "should have an active class on the about link" do
      visit about_path
      expect(page).to have_css("li.active a", text: "About")
    end
  end
end