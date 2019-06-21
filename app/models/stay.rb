# frozen_string_literal: true

class Stay < ApplicationRecord
  before_save :check_overlapping
  belongs_to :studio
  belongs_to :tenant

  private

  def check_overlapping
    if self.where("start_time <= ? AND ? <= end_time", end_time, start_time).empty?
      save
    else
      puts "Sorry,looks like the slot you're trying to book is already taken !"
    end 
  end
end
