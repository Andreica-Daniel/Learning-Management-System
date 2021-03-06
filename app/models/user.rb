class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  belongs_to :school, foreign_key: :school_id
  has_and_belongs_to_many :courses

  accepts_nested_attributes_for :school, reject_if: ->(attributes){ attributes['name'].blank? || attributes['subdomain'].blank? }, allow_destroy: true

  def with_school
    build_school if school.nil?
    self
  end
end
