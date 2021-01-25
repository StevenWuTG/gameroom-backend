class CreateArticleRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :article_ratings do |t|
      t.integer :star
      t.belongs_to :rater
      t.belongs_to :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
