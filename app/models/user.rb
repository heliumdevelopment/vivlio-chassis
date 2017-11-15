class User
  attr_accessor :first_name,
                :last_name,
                :email

  def initialize(params)
    @first_name = params[:first_name]
    @last_name = params[:last_name]
    @email_name = params[:email]
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end
