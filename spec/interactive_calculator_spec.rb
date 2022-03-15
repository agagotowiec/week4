require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "first asks the user for the number, then asks again and substracts first number from the second one" do
    fake_terminal = double :fake_terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a number").ordered
    expect(fake_terminal).to receive(:gets).and_return("4").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter another number").ordered
    expect(fake_terminal).to receive(:gets).and_return("3").ordered
    expect(fake_terminal).to receive(:puts).with("Here is your result: ").ordered
    expect(fake_terminal).to receive(:puts).with("4 - 3 = 1").ordered
    interactive_calculator = InteractiveCalculator.new(fake_terminal)
    interactive_calculator.run

  end

  it "fails given a string instead of a first number" do
  fake_terminal = double :fake_terminal
  expect(fake_terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a number").ordered
  expect(fake_terminal).to receive(:gets).and_return("sun").ordered
  interactive_calculator = InteractiveCalculator.new(fake_terminal)
  expect { interactive_calculator.run }.to raise_error "You must provide a number"
end
it "fails given a string instead of a second number" do
  fake_terminal = double :fake_terminal
    expect(fake_terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter a number").ordered
    expect(fake_terminal).to receive(:gets).and_return("4").ordered
    expect(fake_terminal).to receive(:puts).with("Please enter another number").ordered
    expect(fake_terminal).to receive(:gets).and_return("nope").ordered
    interactive_calculator = InteractiveCalculator.new(fake_terminal)
    expect { interactive_calculator.run }.to raise_error "You must provide a number"
end
it "fails given an empty string instead of a number" do
  fake_terminal = double :fake_terminal
  expect(fake_terminal).to receive(:puts).with("Hello. I will subtract two numbers.").ordered
  expect(fake_terminal).to receive(:puts).with("Please enter a number").ordered
  expect(fake_terminal).to receive(:gets).and_return("").ordered
  interactive_calculator = InteractiveCalculator.new(fake_terminal)
  expect { interactive_calculator.run }.to raise_error "You must provide a number"
end
end