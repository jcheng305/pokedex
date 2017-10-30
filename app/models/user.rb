class User < ApplicationRecord
  include ActiveModel::Validations
  has_secure_password

  validates :name, presence: true, uniqueness: true, length: {minimum: 5}
  validates :email, presence: true, uniqueness: true, length: {minimum: 1}
  validates :password, presence: true, length: {minimum: 6}

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end

end
