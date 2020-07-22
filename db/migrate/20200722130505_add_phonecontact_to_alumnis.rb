class AddPhonecontactToAlumnis < ActiveRecord::Migration[6.0]
  def change
    add_column :alumnis, :phonecontact, :string
  end
end
