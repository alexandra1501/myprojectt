class CreateStaffs < ActiveRecord::Migration[5.2]
  def change
    create_table :staffs do |t|
      t.string :login
      t.string :password

      t.references :department

      t.timestamps
    end
  end
end
