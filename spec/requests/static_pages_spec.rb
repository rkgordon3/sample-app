require 'spec_helper'

describe "StaticPages" do
  let(:static_title) { 'Sample App' }

  describe "Home Page" do
  	it "should have title 'Home'" do
  		visit '/static_pages/home' 
  		page.should have_selector('title', :text => "#{static_title} | Home")
  	end
    it "should have h1 'Sample App'" do
	  visit '/static_pages/home'
	  page.should have_selector('h1', :text=> "#{static_title}")
    end
  end
  describe "Help Page" do
  	it "should have title 'Help'" do
  		visit '/static_pages/help' 
  		page.should have_selector('title', :text => "#{static_title} | Help")
  	end
    it "should have h2 'Help'" do
	  visit '/static_pages/help'
	  page.should have_selector('h1', :text => 'Help')
    end
  end
  describe "About Page" do
  	it "should have title 'About'" do
  		visit '/static_pages/about' 
  		page.should have_selector('title', :text => "#{static_title} | About")
  	end
    it "should have h2 'About'" do
	  visit '/static_pages/about'
	  page.should have_selector('h2', :text=> 'About')
    end
  end
end
