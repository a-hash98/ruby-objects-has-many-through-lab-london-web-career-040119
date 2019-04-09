class Doctor
  @@all = []
  @appt = []

  attr_accessor :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(p=Patient.new(),date)
    @p = Patient.new()
    @date = date

  end

  def appointments
  end

  def patients
  end


end
