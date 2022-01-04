class CreateExperiences < ActiveRecord::Migration[7.0]
  def change
    create_table :experiences do |t|
      t.string :company_name
      t.string :position
      t.date :date_begin
      t.date :date_end
      t.text :description

      t.timestamps
    end
  end
end
