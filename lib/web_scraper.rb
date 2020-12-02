require 'nokogiri'
require 'open-uri'
require 'byebug'

<<<<<<< HEAD
class WeekendTips
=======
class Weekend_tips
>>>>>>> 2f6ac45...  adds readme file and test file for the project
  def initialize; end

  def input_check(input)
    if input < 25 && input >= 1
      true
    else
      false
    end
  end

  def tip_detail(value)
<<<<<<< HEAD
    url = URI.parse('https://footballwhispers.com/blog/todays-betting-tips/').open
    parsed = Nokogiri::HTML(url)
=======
    url = 'https://footballwhispers.com/blog/todays-betting-tips/'
    parsed = Nokogiri::HTML(URI.open(url))
>>>>>>> 2f6ac45...  adds readme file and test file for the project
    parsed.search('p')[value + 33].text
  end
end
