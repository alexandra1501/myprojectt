class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :name
      t.string :email
      t.text :subject
      t.text :body

      t.references :client, :staff, :department

      t.timestamps
    end
  end
end
