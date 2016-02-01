class AddPictureToMountains < ActiveRecord::Migration
  def change
    add_attachment :mountains, :picture
  end
end
