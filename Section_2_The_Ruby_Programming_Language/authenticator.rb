vault = { 'a' => '1' }


puts
puts 'Welcome to the Authenticator'
20.times {print '-'}
puts

i = 0

while i < 3

    print 'Enter username: '
    id = gets.chomp
    puts
    print 'Enter password: '
    pass = gets.chomp
    puts
    
    if vault[id] == pass
        return puts 'Password authenticated'     
    elsif i < 2
        puts 'Wrong password. Try again.'       
    else
        puts  "Wrong password. \nYou\'ve exceeded the number of allowed attempst. \nYour account is locked"   
    end

    i += 1
end

puts 