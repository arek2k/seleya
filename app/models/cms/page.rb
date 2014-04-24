class Cms::Page < ActiveRecord::Base
  belongs_to :user
  has_one :content
end
