class Event < ActiveRecord::Base
  belongs_to :user
  validates_formatting_of :url, using: :url
end
