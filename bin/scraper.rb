<<<<<<< HEAD
=======
#!usr/bin/env ruby

>>>>>>> fc13f44... fixes test and linter errors
require 'open-uri'
require 'nokogiri'
require 'byebug'
require_relative '../lib/web_scraper'
require_relative '../lib/interface_bot'

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
welcome
