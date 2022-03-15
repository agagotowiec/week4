require 'diary'

RSpec.describe Diary do
it "constructs diary and returns the contents" do
  diary = Diary.new("text")
  expect(diary.read).to eq "text"
end
it "asks for contents if an empty string given" do
  diary = Diary.new("")
  expect(diary.read).to eq "Please provide your text"
end
end