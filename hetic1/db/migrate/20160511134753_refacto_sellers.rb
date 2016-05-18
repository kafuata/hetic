class RefactoSellers < ActiveRecord::Migration
  def change

    add_column :sellers, :email, :string

    remove_column :sellers, :description, :text # <= sinon pas de rollback

    rename_column :sellers, :firstname, :name

    change_column :sellers, :rate, :integer
    
  end

end
