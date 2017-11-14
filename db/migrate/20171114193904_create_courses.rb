class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.column( :title, :string)
      t.column( :created_at, :datetime)
      t.column( :updated_at, :datetime)
    end
  end
end
