# frozen_string_literal: true

class Stay < ApplicationRecord
  belongs_to :studio
  belongs_to :tenant
end
