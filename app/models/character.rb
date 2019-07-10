class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor

  def say_that_thing_you_say
    "#{name} always says: #{catchphrase}"
  end

  def build_show(details)
    self.show_id = Show.find_or_create_by(details).id
    return Show.all.find_by(id: show_id)
  end
end
