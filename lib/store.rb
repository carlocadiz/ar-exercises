class Store < ActiveRecord::Base
  has_many :employees

  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true , greater_than_or_equal_to: 0}
  validate :mens_and_womens_apparel_cannot_be_both_false



  def mens_and_womens_apparel_cannot_be_both_false

    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "one of mens or womens apparel must be true")
      errors.add(:womens_apparel, "one of mens or womens apparel must be true")
    end

  end


end