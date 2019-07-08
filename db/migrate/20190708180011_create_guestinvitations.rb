class CreateGuestinvitations < ActiveRecord::Migration[5.2]
  def change
    create_table :guestinvitations do |t|
      t.string :status
      t.references :guest, foreign_key: true

      t.timestamps
    end
  end
end
