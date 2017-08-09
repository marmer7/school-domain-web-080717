class School

  def initialize(school)
    @roster = Hash.new
  end

  def roster
    @roster
  end

  def add_student(name, grade)
    if @roster.keys.include?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort #access the roster hash and orders the
    @roster.each do |grade, students_array|
      @roster[grade] = students_array.sort
    end
  end

end
