class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :genre
      t.string :img_url
      t.string :img_url2
      t.string :img_url3
      t.string :video_url


      t.timestamps
    end
  end
end
