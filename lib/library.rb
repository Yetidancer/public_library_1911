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
  end

  def checkout(book)
    return false if @books.include?(book) == false || book.checked_out == true
    book.popularity += 1
    book.checked_out = true
  end

  def return(book)
    book.checked_out = false
  end

  def checked_out_books
    @books.find_all {|book| book.checked_out == true}
  end

  def most_popular_book
    popular_books = @books.reduce({}) do |popular_books, book|
      popular_books[book] = book.popularity
      popular_books
    end

    popular_books.max_by{|key,value| value}[0]
  end
end
