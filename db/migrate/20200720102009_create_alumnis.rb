class CreateAlumnis < ActiveRecord::Migration[6.0]
  def change
    create_table :alumnis do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :course
      t.datetime :year_of_study
      t.string :employed
      t.text :employer
      t.string :own_company

      t.timestamps
    end
  end
end
