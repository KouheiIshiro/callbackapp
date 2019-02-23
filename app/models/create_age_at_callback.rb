class CreateAgeAtCallback
  def before_create(person)
    person.age = 18 if person.age.blank?
  end
end
