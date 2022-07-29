class InteractiveCalculator
  def initialize(io)
    @io = io
  end

  def calculator
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    num1 = @io.gets.to_i

    @io.puts "Please enter another number"
    num2 = @io.gets.to_i

    total = num1-num2

    @io.puts "Here is your result: #{num1} - #{num2} = #{total} "
  end

  # private

  # def get_number
  #   response = @io.gets
  #   return response.to_i if response.is_a? Integer
  #   fail "You must enter a number!"
  # end
end

# result = InteractiveCalculator.new(Kernel)
# result.calculator