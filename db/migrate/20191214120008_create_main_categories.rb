class CreateMainCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :main_categories do |t|
      t.string :name
      t.timestamps
    end

    reversible do |dir|
      dir.up do
        MainCategory.create_translation_table! :name => :string
      end
      dir.down do
        MainCategory.drop_translation_table!
      end
    end

  end
end
