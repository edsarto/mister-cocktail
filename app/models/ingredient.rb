class Ingredient < ActiveRecord::Base
  has_many :doses
  # has_many :cocktails, through: :doses

  validates :name, presence: true, allow_blank: false, uniqueness: true

end
