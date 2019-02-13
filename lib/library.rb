require './lib/author'
require 'pry'

class Library < Author
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

  def include?(book_title)
    @books.flatten.any? do |book|
      book.title.include?(book_title)
    end
  end
end
