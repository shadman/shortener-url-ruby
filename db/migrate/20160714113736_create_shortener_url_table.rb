class CreateShortenerUrlTable < ActiveRecord::Migration
  def change
    create_table :short_urls do |t|
      t.text :short_url
      t.text :url
	  t.integer :views, :default => 0
      t.timestamps
    end
  end
end
