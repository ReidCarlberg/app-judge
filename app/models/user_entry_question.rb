class UserEntryQuestion < ActiveRecord::Base
  #relationships
  belongs_to :user #judge
  belongs_to :entry #the app that we're scoring
  belongs_to :question #the criteria we're scoring it based upon
  
  
end
