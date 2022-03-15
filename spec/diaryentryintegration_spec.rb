require 'diaryentry'
require 'diaryentryformatter'

RSpec.describe 'diaryentryintegration' do
  it "returns formatted diary entry" do
  diaryentry = DiaryEntry.new("title", "contents")
  diaryentryformatter = DiaryEntryFormatter.new(diaryentry)
  expect(diaryentryformatter.format).to eq "title: contents"
end
end