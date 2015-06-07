class CreateReportHafalanTables < ActiveRecord::Migration
  def change
    create_table :report_hafalan do |t|
      t.integer :user_id
      t.integer :surah_id
      t.integer :from_ayat
      t.integer :to_ayat
      t.boolean :hafal
    end
  end
end
