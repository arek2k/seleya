class Cms::Page < ActiveRecord::Base
  belongs_to :user
  belongs_to :layout
  has_one :template
  has_and_belongs_to_many :sections
end
