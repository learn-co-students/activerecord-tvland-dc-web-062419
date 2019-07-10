class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def build_network(details)
    self.network_id = Network.find_or_create_by(details).id
    return Network.find_by(id: network_id)
  end
end
