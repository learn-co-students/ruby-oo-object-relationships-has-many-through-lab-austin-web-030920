class Patient
    attr_accessor :name
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def new_appointment(doc, date)
        Appointment.new(date, self, doc)
    end

    def appointments
        Appointment.all.select{|x| x.patient == self}
    end

    def doctors
        appointments.map(&:doctor)
    end
end