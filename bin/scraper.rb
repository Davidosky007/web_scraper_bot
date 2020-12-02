require 'open-uri'
require 'nokogiri'
require 'byebug'
require_relative '../lib/web_scraper'

def welcome
  new_tips = WeekendTips.new
  input = ''
  loop do
    puts 'Welcome to this app where you get weekly fooball predictions and experts opinion on football matches'
    puts 'please enter a number from 1 - 25 for football prediction'
    input = gets.chomp.to_i
    break if new_tips.input_check(input)
  end
  puts 'fetching your tips:'
  sleep 2
  puts '------------------------------------------'
  puts new_tips.tip_detail(input)
  switch
end

def switch
  puts 'would you like to see more soccer tips?'
  puts 'yes or No'
  choice = ''
  until choice.match?(/^yes$|^no$/)
    puts 'please type Yes or No' if choice != ''
    choice = gets.chomp.downcase
  end

  if choice == 'yes'
    puts '--------------------------------'
    welcome
  else
    puts '------------------------------'
    puts 'Goodbye! Thanks for using this app..'
    puts '--------------------------------'
  end
end

welcome
