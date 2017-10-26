class User < ApplicationRecord
  include ActiveModel::Validations
  has_secure_password
  has_many :pokemons

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user ? @user.authenticate(params[:password]) : false
  end
end
