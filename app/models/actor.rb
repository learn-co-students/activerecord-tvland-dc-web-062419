class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        "#{self.first_name} #{self.last_name}"
    end
    # Write a method in the `Actor` class, `#list_roles`,
    #  that lists all of the characters that actor has. 
    def list_roles
        self.characters.map do |char|  
            "#{char.name} - #{char.show.name}"
        end
    end

end