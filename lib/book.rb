class Book

  attr_reader :info, :author, :title, :publication_year
  attr_accessor :checked_out, :popularity
  def initialize(info)
    @info = info
    @author = info[:author_first_name] + " " + info[:author_last_name]
    @title = info[:title]
    @publication_year = info[:publication_date][-4,4].to_i
    @checked_out = false
    @popularity = 0
  end

  def checked_out?
    @checked_out
  end

end
