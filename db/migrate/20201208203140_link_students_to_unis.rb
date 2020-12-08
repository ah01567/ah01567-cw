class LinkStudentsToUnis < ActiveRecord::Migration[5.2]
  def up
    add_reference :unis, :student, index: true
    Uni.reset_column_information
    student = Student.first

    Uni.all.each do |uni|
      uni.student_id = student.id
      uni.save!
  end

    change_column_null :unis, :student_id, false
    add_foreign_key :unis, :students
  end

  def down
    remove_foreign_key :unis, :students
    remove_reference :unis, :student, index: true
  end
end
