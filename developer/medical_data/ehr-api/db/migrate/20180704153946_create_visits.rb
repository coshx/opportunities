class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.references :patient, foreign_key: true
      t.integer :date
      t.integer :height
      t.integer :weight
      t.integer :ha1c
      t.integer :blood_pressure_systolic
      t.integer :blood_pressure_diastolic

      t.timestamps
    end
  end
end
