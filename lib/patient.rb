require 'pry'

class Patient
    attr_accessor :name, :doctors, :appointments
    @@all = []

    def initialize(name)
        @name = name
        Patient.all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end
 
    def appointments
        Appointment.all.select do |appt_instance|
            appt_instance.patient == self
        end
    end

    def doctors
        self.appointments.collect do |appt_instance|
            appt_instance.doctor
        end
    end

    def self.all
        @@all
    end
end
