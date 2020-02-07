class CreateTvshows < ActiveRecord::Migration[6.0]
  def change
    create_table :tvshows do |t|
      t.string :name
      t.datetime :telecast_time
      t.references :channel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
