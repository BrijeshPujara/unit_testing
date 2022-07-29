require "string_repeater"

RSpec.describe StringRepeater do
  it "repeats the string given the amount of times specified" do
    io = double(:io)
    expect(io).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(io).to receive(:puts).with("Please enter a string").ordered
    expect(io).to receive(:gets).and_return("makers").ordered
    expect(io).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(io).to receive(:gets).and_return(5).ordered
    expect(io).to receive(:puts).with("Here is your result: makersmakersmakersmakersmakers").ordered

    
    repeat = StringRepeater.new(io)
    repeat.run
    
  end
  
    
end


# @io.puts "Hello. I will repeat a string many times."
#     @io.puts "Please enter a string"
#     input = @io.gets.chomp 

#     @io.puts "Please enter a number of repeats"
#     number = @io.gets.to_i

#     @io.puts "Here is your result: #{input * number}"