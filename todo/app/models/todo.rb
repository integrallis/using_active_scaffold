class Todo < ActiveRecord::Base
  belongs_to :category
  has_and_belongs_to_many :keywords

  ##belongs_to :user

  validates_presence_of :name
  validates_inclusion_of :priority, :in => 1..5
end
