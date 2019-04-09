class Doctor
  @@all = []

  attr_accessor :name , :date, :patient

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def new_appointment(patient=Patient.new, date)
    @patient = patient
    @date = date
    Appointment.new(date,p,self)
    Appointment.all << self
  end

  def appointments
    Appointment.all.select{|appt| appt.doctor == self}
  end

  def patients
    appointments.collect{|appt| appt.patient}
  end


end
