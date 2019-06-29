require 'pry'

class Doctor

    attr_accessor :name

    @@all = []

   def initialize(name)
    @name = name
    Doctor.all << self
   end



   def new_appointment(patient,date)
    Appointment.new(patient,self,date)
   end

   def appointments
    Appointment.all.select do |appointment_instances|
        appointment_instances.doctor == self
    end
   end

   def patients
    appointments.map(&:patient)
   end








   def self.all
    @@all
   end



   
# binding.pry

end

puts "something is happening"