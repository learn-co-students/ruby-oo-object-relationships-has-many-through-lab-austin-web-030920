require 'pry'

class Doctor
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_appointment(dat, pat)
        Appointment.new(dat, pat, self)
    end

    def appointments  # search join table, filter for instances of self
        Appointment.all.select {|appt| appt.doctor == self}
    end

    def patients  # search join table, filter for instances of self, return instances of opposing table
        #call our appointments method from above to handle first two steps
        self.appointments.map {|appt| appt.patient}
    end

end