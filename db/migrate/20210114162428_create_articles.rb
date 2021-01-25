class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :video_url
      t.string :img_url
      t.belongs_to :author
      t.belongs_to :game, null: true, foreign_key: true

      t.timestamps
    end
  end
end
