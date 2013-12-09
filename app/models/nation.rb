class Nation < ActiveRecord::Base
  # 1 TO 1
  has_one :coach
  # 1 TO MANY
  has_many :players

  # 1 TO MANY
  has_one :nations_group
  has_one :group, through: :nations_group

  # 1 TO 1
  has_one :standing

  has_many :home_matches, class_name: 'Match', foreign_key: :home
  has_many :away_matches, class_name: 'Match', foreign_key: :away
end
