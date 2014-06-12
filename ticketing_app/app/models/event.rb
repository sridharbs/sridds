class Event < ActiveRecord::Base
  attr_accessible :name, :description, :venue, :entry_fee

  has_and_belongs_to_many :attendees, :join_table => "events_users", :class_name => "User"
  
  def short_description
    self.description.truncate(200)
  end
  
  def running?
    self.created_at.to_date >= Date.today
  end
  
  def discounted_entry_fee
    self.entry_fee - (self.entry_fee * 0.05)
  end
end
