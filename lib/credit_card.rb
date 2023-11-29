class CreditCard
  attr_reader :card_number, 
              :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def last_four
    @card_number[-4, 4]
  end

  def is_valid?
    characters = card_number.chars #transforming into array
    numbers = characters.map(&:to_i) # < == { |x| x.to_i } #transforming array element into integer
    double = numbers.map.with_index { |n, i| i.even? ? n*2 : n } #multiply all the even elements 
    single_digits_double = double.map { |n| if n >= 10 then n.digits.sum else n end } #check if double has more than one digit, if yes add
    sum = single_digits_double.sum #sum array
  
    sum % 10 == 0 
  end
  
  

end

