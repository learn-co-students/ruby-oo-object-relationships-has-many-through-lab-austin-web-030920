class Doctor
    attr_reader :name

    @@all = []
    def initialize(name)
        @name = name

        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        appt = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appt| appt.doctor == self }
    end

    def patients
        test = appointments.map {|appt| appt.patient }
        # binding.pry
    end
end