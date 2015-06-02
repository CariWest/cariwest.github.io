class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string      :img_url
      t.references  :article

      t.timestamps null: false
    end
  end
end
