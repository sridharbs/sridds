class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :gender
  
  has_and_belongs_to_many :events
  
  validates_presence_of :name, :gender
  
  def to_s
    "#{self.name} (#{self.gender})"
  end
  
  def attend_event event
    self.events << [event]
    self.save!
  end
  
  def unattend_event event
    self.events -= [event]
    self.save!
  end
  
  def is_attending? event
    self.events.include?(event)
  end
end
