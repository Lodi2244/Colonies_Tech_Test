class Studio < ApplicationRecord
  has_many :stays
  has_many :tenants, through: :stays

  def dayly_price; end
  def weekly_price; end
  def monthly_price; end
end
