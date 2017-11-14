class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.column( :name, :string)
      t.column( :text, :string)
      t.column( :lesson_id, :integer)
      t.column( :created_at, :datetime)
      t.column( :updated_at, :datetime)

    end
  end
end
