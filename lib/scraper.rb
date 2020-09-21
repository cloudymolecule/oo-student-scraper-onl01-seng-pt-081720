require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    array = []
    html = open(index_url)
    doc = Nokogiri::HTML(html)
    students = doc.css("div.student-card")
    students.each do |student|
      name = student.css(".student-name").text
      location = student.css(".student-location").text
      profile = student.css("a").attribute("href").value
      temp = {name: name, location: location, profile_url: profile}
      array << temp

    end
    array
  end

  def self.scrape_profile_page(profile_url)
    hash = {}
    html = open(profile_url)
    doc = Nokogiri::HTML(html)
    socials = doc.css(".social-icon-container a")
    socials.each do |prof|
      social = prof.attribute("href").value
      if social.include?("twitter")
        hash[:twitter] = social
      elsif social.include?("linkedin")
        hash[:linkedin] = social
      elsif social.include?("github")
        hash[:github] = social
      end
    end
    #hash[:blog] =
    hash[:profile_quote] =  doc.css(".profile-quote").text
    hash[:bio] = doc.css(".description-holder p").text
  end

end

# prof.attribute("href").value
# twitter = done
# linkedin = done
# github = done
# blog =
# profile_quote =
# bio =
