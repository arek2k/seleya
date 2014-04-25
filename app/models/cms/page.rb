class Cms::Page < ActiveRecord::Base
  belongs_to :user
  belongs_to :layout
  has_one :template
  has_many :sections
end
