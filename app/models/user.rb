class User < ActiveRecord::Base
  has_secure_password
  has_many :recipes

  validates :name, :password, :email, presence: :true
  before_create :generate_token

  def generate_token
    return if token.present?
    begin
      self.token = SecureRandom.uuid.gsub(/\-/,'')
    end while self.class.exists?(token: token)
  end
end
