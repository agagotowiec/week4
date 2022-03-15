require 'string_repeater'

RSpec.describe StringRepeater do
  it "repeats given string given number of times" do
    fake_terminal = double :fake_terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a string").ordered
    expect(fake_terminal).to receive(:gets).and_return("TWIX").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(fake_terminal).to receive(:gets).and_return("10").ordered
    expect(fake_terminal).to receive(:puts).with("Here is your result: ").ordered
    expect(fake_terminal).to receive(:puts).with("TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX").ordered
    string_repeater = StringRepeater.new(fake_terminal)
    string_repeater.run
end
it "fails if a string given instead of the number" do
  fake_terminal = double :fake_terminal
  expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a string").ordered
  expect(fake_terminal).to receive(:gets).and_return("TWIX").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats").ordered
  expect(fake_terminal).to receive(:gets).and_return("number").ordered
  string_repeater = StringRepeater.new(fake_terminal)
  expect { string_repeater.run }.to raise_error "You must provide a number"
end
it "fails if an empty string given instead of the number" do
  fake_terminal = double :fake_terminal
  expect(fake_terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a string").ordered
  expect(fake_terminal).to receive(:gets).and_return("TWIX").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a number of repeats").ordered
  expect(fake_terminal).to receive(:gets).and_return("").ordered
  string_repeater = StringRepeater.new(fake_terminal)
  expect { string_repeater.run }.to raise_error "You must provide a number"
end
end