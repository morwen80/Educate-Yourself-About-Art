class CreateArtworks < ActiveRecord::Migration[5.2]
  def change
    create_table :artworks do |t|
      t.string :slug
      t.string :title
      t.string :category
      t.string :medium
      t.string :published_date
      t.string :collecting_institution
      t.string :image
      t.text :image_rights
      t.references :artist, foreign_key: true

      t.timestamps
    end
  end
end
