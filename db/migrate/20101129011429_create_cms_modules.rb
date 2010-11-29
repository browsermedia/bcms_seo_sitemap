class CreateCmsModules < ActiveRecord::Migration
  def self.up
    create_table :cms_modules do |t|
      t.string :name, :limit => 50
      t.text :settings
      t.boolean :cms_managed, :default => true
    end
  end

  def self.down
    drop_table :cms_modules
  end
end

