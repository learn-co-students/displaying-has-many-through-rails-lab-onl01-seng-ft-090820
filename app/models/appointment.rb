class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def appt_format
        date = self.appointment_datetime.strftime("%B %d, %Y")
        time = self.appointment_datetime.strftime("%k:%M")
        date + " at " + time
    end
end
