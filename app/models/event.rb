class Event < ActiveRecord::Base
  has_many :entries
end
