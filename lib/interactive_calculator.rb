class InteractiveCalculator

  def initialize(fake_terminal)
    @fake_terminal = fake_terminal
  end
  
  def run
    @fake_terminal.puts "Hello. I will subtract two numbers."
    @fake_terminal.puts "Please enter a number"
    first_number = get_number
    @fake_terminal.puts "Please enter another number"
    second_number = get_number
    @fake_terminal.puts "Here is your result: "
    @fake_terminal.puts subtract(first_number, second_number)
  end

  private 

  def get_number
    response = @fake_terminal.gets
    return response.to_i if response.to_i.to_s == response
    fail "You must provide a number"
  end

  def subtract(num_1, num_2)
    result = num_1 - num_2
    return "#{num_1} - #{num_2} = #{result}"
  end

end



# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1