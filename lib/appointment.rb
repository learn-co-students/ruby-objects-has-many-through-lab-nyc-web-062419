class Appointment  

    @@all = []

    attr_reader :patient, :doctor
    attr_accessor :date

    def initialize (patient, date, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end

    def self.all
        @@all
    end

end