class CreateSubCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.timestamps
    end

    reversible do |dir|
      dir.up do
        SubCategory.create_translation_table! :name => :string
      end
      dir.down do
        SubCategory.drop_translation_table!
      end
    end

  end
end
