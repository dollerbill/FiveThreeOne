# frozen_string_literal: true

class Exercise
  include ActiveModel::Validations
  attr_accessor :weight

  validates :weight, presence: true

  def initialize(attributes = {})
    attributes.each do |name, value|
      value = value.to_i if value.match?(/\d/)
      send("#{name}=", value)
    end
  end

  def week1
    calculate[:week1]
  end

  def week2
    calculate[:week2]
  end

  def week3
    calculate[:week3]
  end

  private

  def calculate
    {
      week1: {
        set1: (weight * 0.65).floor,
        set2: (weight * 0.75).floor,
        set3: (weight * 0.85).floor
      },
      week2: {
        set1: (weight * 0.70).floor,
        set2: (weight * 0.80).floor,
        set3: (weight * 0.90).floor
      },
      week3: {
        set1: (weight * 0.75).floor,
        set2: (weight * 0.85).floor,
        set3: (weight * 0.95).floor
      }
    }
  end

  # def calculate(weight)
  # weight.floor.to_s
  # last = number.last
  # if last < 5
  #   number.gsub(last, '0').to_i
  # elsif number > 5
  #   number.gsub
  # end
  # end
end
