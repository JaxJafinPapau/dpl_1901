require './lib/author'
require 'pry'

class Library
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

  def card_catalogue
    @books.flatten.sort_by do |book|
      book.author_last_name
    end
  end
end
