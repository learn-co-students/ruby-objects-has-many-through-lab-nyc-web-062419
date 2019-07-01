require 'pry'
class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all.push(self)
    end

    #Class Methods:
    def self.all
        @@all
    end

    #Instance Methods:
    def new_appointment(doctor,date) 
        date = Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select {|apt| apt.patient == self}
    end

    def doctors
        appointments.map(&:doctor)
    end
end