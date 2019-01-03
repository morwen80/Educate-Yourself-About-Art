class CreateArtworkListJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :lists, :artworks do |t|
      t.index [:list_id, :artwork_id]
      # t.index [:artwork_id, :list_id]
    end
  end
end
