class Diary
  def initialize(contents) # contents is a string
    @contents = contents
  end

  def read
  if @contents == ""
    "Please provide your text"
  else 
    @contents
  end
end
end