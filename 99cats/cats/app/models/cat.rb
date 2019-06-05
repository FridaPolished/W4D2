class Cat < ApplicationRecord

  include ActionView::Helpers::DateHelper

  COLORS = [ "black", "white", "blue", "gray", "brown"]

  GENDER = ["M", "F"]

  validates :color, inclusion: COLORS
  validates :sex, inclusion: GENDER

  def age
    cats_age = ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
  end
end
