class Dose < ActiveRecord::Base
  belongs_to :cocktail
  belongs_to :ingredient

  validates_presence_of :description, allow_blank: false, uniqueness: true

  validates_presence_of :ingredient, allow_blank: false
  validates_presence_of :cocktail, allow_blank: false

  validates_uniqueness_of :cocktail_id && :ingredient_id


end
