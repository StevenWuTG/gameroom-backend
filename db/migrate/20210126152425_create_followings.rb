class CreateFollowings < ActiveRecord::Migration[6.0]
  def change
    create_table :followings do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :follow

      t.timestamps
    end
  end
end
