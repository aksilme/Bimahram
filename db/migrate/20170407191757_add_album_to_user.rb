class AddAlbumToUser < ActiveRecord::Migration[5.0]

    def change
      add_column :users, :album, :string
    end

end
