class Event < ActiveRecord::Base
  attr_accessible :name, :description, :venue

  has_and_belongs_to_many :attendees, :join_table => "events_users", :class_name => "User"
  
  def short_description
    self.description.truncate(200)
  end
end
