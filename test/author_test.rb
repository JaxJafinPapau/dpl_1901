require './test/test_helper'

class AuthorTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @the_fifth_season = Book.new({
        author_first_name: "N.K.",
        author_last_name: "Jemisin",
        title: "The Fifth Season",
        publication_date: "November 3, 2015"
        })
    @the_hundred_thousand_kingdoms = Book.new({
      author_first_name: "N.K.",
      author_last_name: "Jemisin",
      title: "The Hundred Thousand Kingdoms",
      publication_date: "2010"
      })
  end

  def test_author_exists
    assert_instance_of Author, @nk_jemisin
  end

  def test_author_starts_with_no_books
    assert_equal [], @nk_jemisin.books
  end

  def test_author_can_add_books
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal [@the_fifth_season], @nk_jemisin.books
    @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal [@the_fifth_season, @the_hundred_thousand_kingdoms],
                  @nk_jemisin.books
  end
end
