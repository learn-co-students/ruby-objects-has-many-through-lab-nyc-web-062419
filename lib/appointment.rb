
class Appointment

    @@all = []

    def self.all
        @@all
    end

    attr_accessor :date
    attr_reader :patient, :doctor

    def initialize(date, patient, doctor)

        @date = date
        @patient = patient
        @doctor = doctor

        @@all << self

    end


end