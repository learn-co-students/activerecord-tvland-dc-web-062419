class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
     "#{self.first_name} #{self.last_name}"
    end

    def list_roles
       Character.all.map do |character| 
            if character.actor_id == self.id 
            show_name = Show.all.find(character.show_id).name
            "#{character.name} - #{show_name}"
            end
        end
    end
  
end