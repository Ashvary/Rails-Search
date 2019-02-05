class AddCourseToRecord < ActiveRecord::Migration[5.2]
  def change
    add_reference :records, :course, foreign_key: true
  end
end
