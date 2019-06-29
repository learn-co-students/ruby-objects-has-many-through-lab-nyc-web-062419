require 'pry'

class Appointment

    attr_accessor :date, :patient, :doctor

    @@all = []

    def initialize(patient,doctor,date)
        @date = date
        @doctor = doctor
        @patient = patient
        Appointment.all << self
    end

    def self.all
        @@all
    end

    # binding.pry
end

puts "something is happening"