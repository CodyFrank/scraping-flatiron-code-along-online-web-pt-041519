require 'nokogiri'
require 'open-uri'
require 'pry'
require_relative './course.rb'

class Scraper

    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  ############## Harvest step / get request step ###################

  def get_page #perform harvest / get request. we use open uri to get html
    # then nokogiri to make it useable
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    doc = Nokogiri::HTML(html)
  end

  ############## Filter step ################

  def get_courses
  end

end
