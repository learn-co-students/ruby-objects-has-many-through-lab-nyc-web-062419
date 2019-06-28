class Doctor
    attr_accessor :appointments
    attr_reader :name
    @@all = []
    def initialize name
        @name = name
        @appointments = []
        @@all << self
    end
    def new_appointment patient,date
        Appointment.new(date,patient,self)
    end
    def self.all
        @@all
    end
    def patients
        patients = @appointments.map {|p| p.patient}
        patients
    end
end