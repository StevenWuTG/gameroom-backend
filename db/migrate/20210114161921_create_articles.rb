class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :content
      t.string :video_url
      t.string :img_url
      t.string :author

      t.timestamps
    end
  end
end
