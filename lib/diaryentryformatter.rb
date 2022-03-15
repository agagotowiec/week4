class DiaryEntryFormatter
  def initialize(diary_entry) 
    @diaryentry = diary_entry
  end

  def format
  return "#{@diaryentry.title}: #{@diaryentry.contents}"
  end

end