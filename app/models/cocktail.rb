class Cocktail < ActiveRecord::Base
  has_many :doses, :dependent => :delete_all
  has_many :ingredients, through: :doses

  validates :name, presence: true, allow_blank: false, uniqueness: true


end
