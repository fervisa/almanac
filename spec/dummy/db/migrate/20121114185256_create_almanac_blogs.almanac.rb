# This migration comes from almanac (originally 20121010033555)
class CreateAlmanacBlogs < ActiveRecord::Migration
  def up
    create_table :almanac_blogs do |t|
      t.string :title
      t.references :author

      t.timestamps
    end
  end

  def down
    drop_table :almanac_blogs
  end
end
