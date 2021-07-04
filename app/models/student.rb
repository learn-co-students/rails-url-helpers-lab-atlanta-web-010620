class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activity
    if self.active
      return "active"
    else
     return "inactive"
    end
  end

  def toggle
    if self.active == true
      self.active = false
    else
      self.active = true
    end
  end

end