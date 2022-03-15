```ruby

INTEGRATION TESTS

#1. diary starts off locked
diary = Diary.new("my text")
secret_diary = SecretDiary.new(diary)
secret_diary.lock
expect(secret_diary.read).to eq "Go away!"


#2. when diary has been unlocked
diary = Diary.new("my text")
secret_diary = SecretDiary.new(diary)
secret_diary.unlock
expect(secret_diary.read).to eq "my text"

UNIT TESTS

SECRETDIARY

#1. it constructs and starts off as locked
fake_diary = double :fake_diary, contents: "fake text"
secret_diary = SecretDiary.new(fake_diary)
secret_diary.lock
expect(secret_diary.read).to eq "Go away!"

i "returns contents when diary has been unlocked" do
fake_diary = double :fake_diary, contents: "fake text"
secret_diary = SecretDiary.new(fake_diary)
secret_diary.unlock
expect(secret_diary.read).to eq "fake text"

# DIARY

# #if contents given
# it "constructs and returns contents" do
# diary = Diary.new("my text")
# expect(diary.read).to eq "my text"

# #if no contents given
# it "asks the user for the contents" do
# diary = Diary.new("")
# expect(diary.read).to eq "Please provide your text"
