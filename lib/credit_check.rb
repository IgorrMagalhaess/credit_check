card_number = "5541808923795240"

def credit_check(card_number)
  characters = card_number.chars #transform into an array
  numbers = characters.map(&:to_i) #transform string into integers
  doubles = numbers.map.with_index{ |n, i| i.even? ? n*2 : n} #double every other one
  single_digits_doubles = doubles.map { |n| n >= 10 ? n.digits.sum : n } #sum doubles that have two digits
  sum = single_digits_doubles.sum #sum array

  if sum % 10 == 0
    "The number #{card_number} is valid!"
  else
    "The number #{card_number} is invalid!"
  end
end

puts credit_check("5541808923795240")
puts credit_check("4024007136512380")
puts credit_check("6011797668867828")
puts credit_check("5541801923795240")
puts credit_check("4024007106512380")
puts credit_check("6011797668868728") 


# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"
