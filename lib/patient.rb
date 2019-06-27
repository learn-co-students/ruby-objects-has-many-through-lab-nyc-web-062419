class Patient
  attr_accessor :name, :appointments, :doctors

  @@all = []

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
    @@all << self
  end

  def new_appointment(doctor, date)
    # make appointment
    app = Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end
end
