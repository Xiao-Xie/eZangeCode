class CreateSupports < ActiveRecord::Migration
  def change
    create_table :supports do |t|
      t.string :user_name
      t.string :user_email
      t.string :support_request

      t.timestamps
    end
  end
end
