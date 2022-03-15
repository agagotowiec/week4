require 'secretdiary'

RSpec.describe SecretDiary do
it "initially is locked" do
fake_diary = double :fake_diary
secret_diary = SecretDiary.new(fake_diary)
expect { secret_diary.read }.to raise_error "Go away!"
end
context "when is unlocked" do
it "reads diary" do
  fake_diary = double :fake_diary, read: "text text"
  secret_diary = SecretDiary.new(fake_diary)
  secret_diary.unlock
  expect(secret_diary.read).to eq "text text"
  end
end
context "when relocked" do
  it "doesn't read the diary" do
    fake_diary = double :fake_diary
    secret_diary = SecretDiary.new(fake_diary)
    secret_diary.unlock
    secret_diary.lock
    expect { secret_diary.read }.to raise_error "Go away!"
    end
  end
end