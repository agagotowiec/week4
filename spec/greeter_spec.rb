require 'greeter'

RSpec.describe Greeter do
  it "asks user for their name and greets them " do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("What is your name?").ordered
    expect(terminal).to receive(:gets).and_return("Aga").ordered
    expect(terminal).to receive(:puts).and_return("Hello, Aga!").ordered
    greeter = Greeter.new(terminal)
    greeter.greet
  end
end