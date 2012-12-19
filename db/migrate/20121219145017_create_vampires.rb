class CreateVampires < ActiveRecord::Migration
  def change
    create_table :vampires do |t|
      t.string :name
      t.string :blood_type
      t.string :team

      t.timestamps
    end
  end
end
