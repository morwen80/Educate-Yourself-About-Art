class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :slug
      t.string :name
      t.string :gender
      t.string :biography
      t.string :birth_day
      t.string :death_day
      t.string :hometown
      t.string :location
      t.string :nationality
      t.string :image

      t.timestamps
    end
  end
end
