require 'pry'

class Patient

    attr_accessor :name

    @@all = []

   def initialize(name)
    @name = name
    Patient.all << self
   end

   def new_appointment(doctor,date)
    Appointment.new(self,doctor,date)
   end

   def appointments
    Appointment.all.select do |appointment_instances|
        appointment_instances.patient == self
    end
   end

   def doctors
    appointments.map(&:doctor)
   end


   def self.all
    @@all
   end
    
    # binding.pry

end

puts "something is happening"