require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/"))
    students = doc.css("body > div > div > div.roster-cards-container").text
    students.each do |student|
      
    end
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end
