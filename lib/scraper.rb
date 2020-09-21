require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/"))
    students = doc.css(".student-card")
    students.each do |student|
       puts student.text.strip
      binding.pry
    end
  end

  def self.scrape_profile_page(profile_url)

  end

end
