require 'diaryentryformatter'

RSpec.describe DiaryEntryFormatter do
  it "returns formatted diary entry" do
    diaryentry = double(:diaryentry, title: "Hi", contents: "my greeting")
    diaryentryformatter = DiaryEntryFormatter.new(diaryentry)
    expect(diaryentryformatter.format).to eq "Hi: my greeting"
end
end