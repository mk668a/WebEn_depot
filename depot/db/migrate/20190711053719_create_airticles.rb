class CreateAirticles < ActiveRecord::Migration[5.2]
  def change
    create_table :airticles do |t|
      t.string :name
      t.string :affiliation
      t.string :contactaddress
      t.string :phonenumber
      t.string :title
      t.text :abstract

      t.timestamps
    end
  end
end
