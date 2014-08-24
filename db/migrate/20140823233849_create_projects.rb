class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :image_url
      t.string :fb_share_message
      t.string :fb_share_image

      t.timestamps
    end
  end
end
