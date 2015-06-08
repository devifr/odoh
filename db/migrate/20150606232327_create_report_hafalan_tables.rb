class CreateReportHafalanTables < ActiveRecord::Migration
  def change
    create_table :report_hafalans do |t|
      t.integer :user_id
      t.integer :surah_id
      t.integer :from_ayat
      t.integer :to_ayat
      t.boolean :hafal
      t.timestamps
    end
  end
end
