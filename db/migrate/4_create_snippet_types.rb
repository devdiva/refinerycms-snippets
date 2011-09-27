class CreateSnippetTypes < ActiveRecord::Migration

  def self.up
    create_table :snippet_types do |t|
      t.string :name, :null => false
      t.timestamps
    end
    add_index :snippet_types, :id
  end

  def self.down
   drop_table :snippet_types
  end

end