class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.column( :name, :string)
      t.column( :course_id, :string)
      t.column( :created_at, :datetime)
      t.column( :last_updated, :datetime)
    end
  end
end
