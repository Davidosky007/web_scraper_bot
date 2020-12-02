require 'nokogiri'
require 'open-uri'
require 'byebug'

class Weekend_tips
  def initialize; end

  def input_check(input)
    if input < 25 && input >= 1
      true
    else
      false
    end
  end

  def tip_detail(value)
    url = 'https://footballwhispers.com/blog/todays-betting-tips/'
    parsed = Nokogiri::HTML(URI.open(url))
    parsed.search('p')[value + 33].text
  end
end
