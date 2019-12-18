class Library

  attr_reader :name, :books, :authors
  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end


  def add_author(author)
    @authors << author
    @books << author.books
    @books = @books.flatten
  end

  def publication_time_frame_for(author)
    dates = []
    author.books.each {|book| dates << book.publication_year}
    time_frame = {start: dates.min.to_s, end: dates.max.to_s}
    # require "pry"; binding.pry
  end
end
