
# For every two empty bottles, you can get one free (full) bottle of pop
# For every four bottle caps, you can get one free (full) bottle of pop
# Each bottle of pop costs $2 to purchase



# investment = 

# initial_bottles = investment / 2

# bottles 

# bottles_empty 

# bottle_caps

class Investment
  attr_accessor :dollars
  def initialize(investment)
    @dollars = investment
    end
end

class Calculator
  attr_accessor :initial_bottles

  def initialize
    puts "How much would you like to invest?"
    inv_input = gets.chomp.to_i
    @investment = Investment.new(inv_input)
    @initial_bottles = @investment.dollars / 2
    @total_bottles = @initial_bottles
    @caps = @initial_bottles
    @empties = @initial_bottles

    @bottles_redeemed_from_e = 0
    @bottles_redeemed_from_c = 0
  end

  def recycle

    if @caps >= 4 || @empties >= 2
      bottles_redeemed = (@empties / 2 + @caps / 4)
      @bottles_redeemed_from_e += @empties / 2
      @bottles_redeemed_from_c += @caps / 4
      @total_bottles += bottles_redeemed
      @caps = (@caps % 4) + bottles_redeemed
      @empties = (@empties % 2) + bottles_redeemed
      recycle
     else
      puts "You will get #{@total_bottles} bottles from your investment of #{@investment.dollars} dollars."
      puts "#{@initials_bottles} were initially purchased."
      puts "#{@bottles_redeemed_from_e} bottles were redeemed from empty bottles."
      puts "#{@bottles_redeemed_from_c} bottles were redeemed from bottle caps."
    end



  end



  def algorithm
    
    bottles_from_empty = (@bottles + @empties) / 2
    @caps += @bottles % 2
    bottles_from_caps = @bottles / 4
    @bottles = bottles_from_empty + bottles_from_caps
    @bottles_redeemed_from_e += bottles_from_empty
    @bottles_redeemed_from_c += bottles_from_caps

    @total_bottles += (bottles_from_empty + bottles_from_caps)
    
    while @bottles > 0
      algorithm
    end
    puts "You will get #{@total_bottles} bottles from your investment of #{@investment.dollars} dollars."
    puts "#{@initials_bottles} were initially purchased."
    puts "#{@bottles_redeemed_from_e} bottles were redeemed from empty bottles."
    puts "#{@bottles_redeemed_from_c} bottles were redeemed from bottle caps."
  end

  # def runner 
  #   while @bottles > 0
  #     algorithm
  #   end
  #   puts "You will get #{@total_bottles} from your investment"
  # end

end

pop = Calculator.new

pop.recycle
