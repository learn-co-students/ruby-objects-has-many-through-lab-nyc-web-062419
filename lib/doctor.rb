class Doctor
  attr_accessor :name, :patients, :appointments
  @@all = []

  def initialize(name)
    @name = name
    @patients = []
    @appointments = []
    @@all << self
  end

  def new_appointment(patient, date)
    # create an appointment here
    app = Appointment.new(date, patient, self)
  end

  def self.all
    @@all
  end
end
