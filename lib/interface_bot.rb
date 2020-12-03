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
