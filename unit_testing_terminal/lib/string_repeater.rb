class StringRepeater
  def initialize(io)
    @io = io
  end

  def run
    @io.puts "Hello. I will repeat a string many times."
    @io.puts "Please enter a string"
    input = @io.gets.chomp 

    @io.puts "Please enter a number of repeats"
    number = @io.gets.to_i

    @io.puts "Here is your result: #{input * number}"
  end
end

# result = StringRepeater.new(Kernel)
# result.run