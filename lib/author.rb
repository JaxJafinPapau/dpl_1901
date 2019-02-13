require './lib/book'

class Author < Book
  attr_reader :books,
              :first_name,
              :last_name

  def initialize(author_info)
    @books = []
    @first_name = author_info[:first_name]
    @last_name = author_info[:last_name]
  end

  def add_book(title, publication_date)
    @books << Book.new({
      author_first_name: @first_name,
      author_last_name: @last_name,
      title: title,
      publication_date: publication_date
      })
  end
end
