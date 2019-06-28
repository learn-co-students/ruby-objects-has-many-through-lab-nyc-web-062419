require 'pry'

class Appointment
    attr_accessor :patient, :date, :doctor
    @@all = []

    def initialize(patient, date, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        Appointment.all << self
    end

    def self.all
        @@all
    end
end
