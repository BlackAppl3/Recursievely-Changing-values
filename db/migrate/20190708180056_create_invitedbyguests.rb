class CreateInvitedbyguests < ActiveRecord::Migration[5.2]
  def change
    create_table :invitedbyguests do |t|
      t.references :guestinvitation, foreign_key: true
      t.references :guest, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
