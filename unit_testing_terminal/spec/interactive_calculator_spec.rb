require "interactive_calculator"

RSpec.describe InteractiveCalculator do
  it "returns the output of two given numbers" do 
    io = double(:io)
    expect(io).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(io).to receive(:puts).with("Please enter a number").ordered
    expect(io).to receive(:gets).and_return(4).ordered
    expect(io).to receive(:puts).with("Please enter another number").ordered
    expect(io).to receive(:gets).and_return(2).ordered
    expect(io).to receive(:puts).with("Here is your result: 4 - 2 = 2 ").ordered

    result = InteractiveCalculator.new(io)
    result.calculator
  end  

  # it "fails if given a string instead of a number" do
  #   io = double :io
  #   expect(io).to receive(:puts).with('Hello. I will subtract two numbers.').ordered
  #   expect(io).to receive(:puts).with('Please enter a number').ordered
  #   expect(io).to receive(:gets).and_return('three').ordered
    
  #   calculator = InteractiveCalculator.new(io)
  #   expect { calculator.run }.to raise_error "You must enter a number!"
  # end
    
end


# @io.puts "Hello. I will subtract two numbers."
# @io.puts "Please enter a number"
# num1 = @io.gets.chomp.to_i

# @io.puts "Please enter another number"
# num2 = @io.gets.chomp.to_i

# total = num1-num2

# @io.puts "Here is your result: #{num1} - #{num2} = #{total} "