class Doctor
    attr_accessor :name, :appointments, :patients
    @@all = []
    
    def initialize (name)
        @name = name
        Doctor.all << self
    end
    
    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end
    
    def appointments
        Appointment.all.select do |appt_instance|
            appt_instance.doctor == self
        end
    end
    
    def patients
        self.appointments.collect do |appt_instance|
            appt_instance.patient
        end
    end

    def self.all
        @@all
    end
    
end
