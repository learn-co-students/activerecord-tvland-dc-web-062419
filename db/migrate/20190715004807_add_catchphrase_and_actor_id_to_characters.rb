class AddCatchphraseAndActorIdToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :catchphrase, :string
    add_column :characters, :actor_id, :integer
  end
end
