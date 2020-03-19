
class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|appt| appt.patient == self}
    end

    def new_appointment(dat, doc)
        Appointment.new(dat, self, doc)
    end

    def doctors
        self.appointments.map(&:doctor)
    end

end