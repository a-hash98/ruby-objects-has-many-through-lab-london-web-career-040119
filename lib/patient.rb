class Patient

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date,doctor)
    Appointment.new(date,self,doctor)
    Appointment.all << self
  end

  def appointments
    Appointment.all.select{|appt| appt.patient == self}
  end

  def doctors
    self.appointments.collect{|appt| appt.doctor}
  end

end
