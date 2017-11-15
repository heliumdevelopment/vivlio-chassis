class Book
  attr_reader :isbn, :owner

  def initialize(user, isbn)
    @owner = user
    @isbn = isbn

    @owner.add_to_bookshelf(self)
  end
end
