class CreateJoinTableDogStrolls < ActiveRecord::Migration[5.2]
  def change
    create_table :join_table_dog_strolls do |t|
    	t.belongs_to :dog
    	t.belongs_to :stroll
      t.timestamps
    end
  end
end
