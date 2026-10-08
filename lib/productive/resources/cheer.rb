module Productive
  class Cheer < BaseAccount
    has_one :creator, class_name: 'Person'
    has_many :recipients, class_name: 'CheerRecipient'
    has_many :values, class_name: 'CheerValue'
  end
end
