require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = doc.css("div.student-card")
    students.each do |student|

      binding.pry
    end

  end

  def self.scrape_profile_page(profile_url)

  end

end
