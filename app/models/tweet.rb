class Tweet < ActiveRecord::Base

  #set up entity relationship
  belong_to(:user)

end
