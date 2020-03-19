
class Appointment
    attr_accessor :doctor, :patient, :date
    @@all = []

    def initialize(dat, pat, doc)
        @doctor = doc
        @patient = pat
        @date = dat
        @@all << self
    end

    def self.all 
        @@all
    end

end