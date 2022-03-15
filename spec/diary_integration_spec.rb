require "diary"
require "secretdiary"

RSpec.describe "diary_integration" do
  it "initially starts off locked" do
  diary = Diary.new("my text")
  secret_diary = SecretDiary.new(diary)
  secret_diary.lock
  expect { secret_diary.read }.to raise_error "Go away!"
  end
  context "when it is unlocked" do
  it "returns contents" do
  diary = Diary.new("my text")
  secret_diary = SecretDiary.new(diary)
  secret_diary.unlock
  expect(secret_diary.read).to eq "my text"
    end
end
context "when it is relocked" do
  it "doesn't read the diary" do
  diary = Diary.new("my text")
  secret_diary = SecretDiary.new(diary)
  secret_diary.unlock
  secret_diary.lock
  expect { secret_diary.read }.to raise_error "Go away!"
    end
end
end