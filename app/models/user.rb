class User < ActiveRecord::Base
  # user roles
  # enum role: [:user, :moderator, :admin]
  # after_initialize :set_default_role, :if => :new_record?
  # check user role
  # def set_default_role
  #   self.role ||= :user
  # end
  # validations:first_name,
  validates :last_name, if: -> { self.last_name.present? },
            length: { minimum: 2, message: "must be more than 2 characters" },
            format: { with: /\A[^\u0000-\u007F]*[a-zA-z]*\z/, message: "only allows letters" }
  # validates :phone_number, presence: false, on: :create,
  #           length: { is: 12 , message: "must be 12 characters" },
  #           numericality: { only_integer: true, message: "just numbers" }
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
