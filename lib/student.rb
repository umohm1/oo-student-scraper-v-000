class Student

  attr_accessor :name, :location, :twitter, :linkedin, :github, :blog, :profile_quote, :bio, :profile_url

  @@all = []

  def initialize(student_hash)  
    student_hash.each{|key, value| self.send("#{key}=, value")}
    #sophie.send("name=", "Sophie"), calls methods on objects, abstracts the specific method call , self refers to user instance that is bein initialized
    #at that time
    @@all << self
  end

  def self.create_from_collection(students_array)
    students_array.each do ||
      self.new()
  end

  def add_student_attributes(attributes_hash)

  end

  def self.all
    @@all
  end

end
end
