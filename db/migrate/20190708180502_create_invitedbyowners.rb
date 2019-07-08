class CreateInvitedbyowners < ActiveRecord::Migration[5.2]
  def change
    create_table :invitedbyowners do |t|
      t.references :owner, foreign_key: true
      t.references :guest, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
