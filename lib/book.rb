class Book

  attr_reader :info, :author, :title, :publication_year
  def initialize(info)
    @info = info
    @author = info[:author_first_name] + " " + info[:author_last_name]
    @title = info[:title]
    @publication_year = info[:publication_date][-4,4].to_i
  end

end
