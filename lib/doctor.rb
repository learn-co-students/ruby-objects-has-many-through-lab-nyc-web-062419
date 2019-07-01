require 'pry'
class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @@all.push(self)
    end

    #class methods
    def self.all
        @@all
    end

    def new_appointment(patient, date)
        ##
        # binding.pry
        date = Appointment.new(patient, self, date)
        ##
    end

    def appointments
        Appointment.all.select { |appointment| appointment.doctor == self }            
    end

    def patients
        appointments.map(&:patient)
    end



end
