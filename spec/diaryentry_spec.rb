require 'diaryentry'

RSpec.describe DiaryEntry do
  it "constructs" do
    diaryentry = DiaryEntry.new("title", "contents")
    expect(diaryentry.title).to eq "title"
    expect(diaryentry.contents).to eq "contents"

  end
end