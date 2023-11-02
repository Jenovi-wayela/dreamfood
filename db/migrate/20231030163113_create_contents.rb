class CreateContents < ActiveRecord::Migration[7.0]
  def change
    create_table :contents do |t|
      t.string :media_url

      t.timestamps
    end
  end
end
