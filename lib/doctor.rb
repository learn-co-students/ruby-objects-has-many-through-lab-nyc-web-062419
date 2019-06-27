class Doctor

    @@all = []

    attr_reader :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        self.appointments.collect {|appointment| appointment.patient}.uniq
    end

    def new_appointment (patient, date)
        Appointment.new(patient, date, self)
    end

end