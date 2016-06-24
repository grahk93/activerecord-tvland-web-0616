class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
     "#{self.name} always says: #{self.catchphrase}"
  end
  
end
# .catchphrase 
 #TODO: make a method in the model to say his name and catchphrase
    #remember the model is yours do with as you please, you 
    #are free to add methods that perform actions on the model's data
