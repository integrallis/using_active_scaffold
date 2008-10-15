class Keyword < ActiveRecord::Base
  has_and_belongs_to_many :todos
  
  validates_presence_of :name
  validates_length_of :name, :within => 2..20, :too_long => "must be shorter than 20 chars", :too_short => "must be longer than 2 chars"
end
