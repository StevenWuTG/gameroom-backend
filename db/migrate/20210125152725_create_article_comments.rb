class CreateArticleComments < ActiveRecord::Migration[6.0]
  def change
    create_table :article_comments do |t|
      t.string :content
      t.belongs_to :article, null: false, foreign_key: true
      t.belongs_to :commenter
      t.timestamps
    end
  end
end
