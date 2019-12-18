class Author

  attr_reader :name, :books
  def initialize(info)
    @name = info[:first_name] + " " + info[:last_name]
    @books = []
  end

  def write(book_title,date)
    new_book = Book.new({title: book_title, publication_date: date, author_first_name: (@name.split" ")[0], author_last_name: (@name.split" ")[1]})
    # new_book.info[:author_first_name] = (@name.split" ")[0]
    # new_book.info[:author_last_name] = (@name.split" ")[1]
    @books << new_book
    new_book
    # require "pry"; binding.pry
  end

end
