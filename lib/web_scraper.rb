require 'nokogiri'
require 'open-uri'
require 'byebug'

class WeekendTips
  def initialize; end

  def input_check(input)
    if input < 25 && input >= 1
      true
    else
      false
    end
  end

  def tip_detail(value)
    url = URI.parse('https://footballwhispers.com/blog/todays-betting-tips/').open
    parsed = Nokogiri::HTML(url)
    parsed.search('p')[value + 33].text
  end
end
