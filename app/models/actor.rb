require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    self.characters.collect do |character| #NAILED IT 
      "#{character.name} - #{Show.find_by(character.show_id).name}"
    end
  end

end

   # TODO create a list_roles method
    # TODO: build a method on actor that will return an array of
    # strings in the form "#{character_name} - #{show_name}"