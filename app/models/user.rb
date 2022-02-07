class User < ActiveRecord::Base

  has_secure_password
  validates_uniqueness_of :email, :case_sensitive => false  

  def self.authenticate_with_credentials(email, password)
    email.strip!
    @user = User.find_by_email(email)
    if @user && @user.authenticate(password)
      @user
    else
      nil
    end
  end 

  validates :name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, length: { minimum: 5 }

end
