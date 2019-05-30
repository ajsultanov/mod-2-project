class User < ApplicationRecord
  has_many :pictures
  has_many :comments
  # has_many :pictures, through: :comments     # unnecessary? ask about this
                                                 # how to set up separate relationship between
        # aliasing?                            # users and pictures via comments without
                                                 # goofing up the user-picture relationship
  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true
  #validates :username, presence: true
  #validates :username, uniqueness: true

  # something to add:
  # conditional on signup -- validates :password_confirmation, presence: true
  has_secure_password

  def received_comments
    received_comments = []
    self.pictures.each do |p|
      p.comments.each do |c|
        received_comments << c
      end
    end
    received_comments
  end

end
