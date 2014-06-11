class Cms::Page < ActiveRecord::Base
  belongs_to :user
  belongs_to :layout
  has_one :template
  has_and_belongs_to_many :sections, :class_name => 'Cms::Section'
  # TODO: class_name shouldn't be required above
  # It is since migration to rails 4.1.1 ? Investigate this.
end
