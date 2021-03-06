class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)
    send("name=", student_hash[:name])
    send("location=", student_hash[:location])
    send("twitter=", student_hash[:twitter])
    send("linkedin=", student_hash[:linkedin])
    send("github=", student_hash[:github])
    send("blog=", student_hash[:blog])
    send("bio=", student_hash[:bio])
    send("profile_quote=", student_hash[:profile_quote])
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do |student|
      new_student = Student.new(student)
    end
  end

  def add_student_attributes(attributes_hash)
    send("twitter=", attributes_hash[:twitter])
    send("linkedin=", attributes_hash[:linkedin])
    send("github=", attributes_hash[:github])
    send("blog=", attributes_hash[:blog])
    send("bio=", attributes_hash[:bio])
    send("profile_quote=", attributes_hash[:profile_quote])

  end

  def self.all
    @@all
  end
end
