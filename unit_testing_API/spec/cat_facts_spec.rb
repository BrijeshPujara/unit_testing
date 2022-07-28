require "cat_facts"

RSpec.describe CatFacts do
  it "returns a cat fact from an API call" do
    request = double(:fake_request)
    expect(request).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return(
        '{"fact":"A cat will tremble or shiver when it is in extreme pain.","length":56}')
    request_call = CatFacts.new(request)
    expect(request_call.provide).to eq "Cat fact: A cat will tremble or shiver when it is in extreme pain."
  end
end
