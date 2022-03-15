class StringRepeater

  def initialize(fake_terminal)
    @fake_terminal = fake_terminal
  end

  def run
    @fake_terminal.puts "Hello. I will repeat a string many times."
    @fake_terminal.puts "Please enter a string"
    string = @fake_terminal.gets
    @fake_terminal.puts "Please enter a number of repeats"
    number = get_number
    @fake_terminal.puts "Here is your result: "
    @fake_terminal.puts result(string, number)

  end

  private

  def get_number
   response = @fake_terminal.gets
   return response.to_i if response.to_i.to_s == response
   fail "You must provide a number"
  end

  def result(str, num)
    result = (str * num)
    return result.to_s
  end

end

# string_repeater = StringRepeater.new(Kernel)
# string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX