require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
        :text => "| Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
        :text => "| Help")
    end
  end

  describe "About page" do 

  	it "should have the content 'About'" do
  		visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
  	end

    it "should have the title 'About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
        :text => "| About")
    end
  end

  describe "Contact page" do 

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
    end

    it "should have the title 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('title',
        :text => "| Contact")
    end
  end

end
