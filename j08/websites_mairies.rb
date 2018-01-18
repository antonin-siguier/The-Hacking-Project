require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'

PAGE_URL = "http://annuaire-des-mairies.com/val-d-oise.html"

def get_the_email_of_a_townhal_from_its_webpage
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))

	links = page.css("tr td p font")
	links.each do |elem|
		if elem.text.include?("@")
			puts elem.text
		end
	end
# binding.pry
end

def get_all_the_urls_of_val_doise_townhalls
	page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
	website = Hash.new
	my_arr = []

	links = page.css(".lientxt")
	links.each do |elem|
		#puts elem.text
		clean_link = "annuaire-des-mairies.com" + elem['href'][1..-1] 
		website[elem.text] = clean_link
	end
	puts website # Uncomment ca pour display le Hash
end
get_all_the_urls_of_val_doise_townhalls

# get_the_email_of_a_townhal_from_its_webpage

