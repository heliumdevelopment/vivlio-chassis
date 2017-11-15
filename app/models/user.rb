class User
  attr_accessor :first_name,
                :last_name,
                :email,
                :bookshelf

  def initialize(params)
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email_name = params[:email]

    @bookshelf = []
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_to_bookshelf(book)
    @bookshelf << book
  end
end
