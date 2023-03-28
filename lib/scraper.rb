require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

# doc = Nokogiri::HTML(html)
doc = Nokogiri::HTML(open("http://flatironschool.com/"))
doc.css(".heading-40-semibold").text.strip

courses = doc.css(".inlineMobileLeft-2Yo002.imageTextBlockGrid2-3jXtmC")

courses.each do |course|
  puts course.text.strip
end

puts doc.css(".heading-40-semibold")