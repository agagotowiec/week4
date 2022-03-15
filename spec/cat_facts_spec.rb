require 'cat_facts'

RSpec.describe CatFacts do
  it "provides facts about cats" do
  requester = double :fake_requester
  expect(requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"After humans, mountain lions have the largest range of any mammal in the Western Hemisphere.","length":92}')
  cat_facts = CatFacts.new(requester)
  expect(cat_facts.provide).to eq "Cat fact: After humans, mountain lions have the largest range of any mammal in the Western Hemisphere."
end
end