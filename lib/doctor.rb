class Doctor 
 
   attr_reader :name
   attr_accessor :specialty

   @@all = []

   def initialize(name, specialty)
   @name = name 
   @specialty = specialty

   @@all << self
   end

   def self.all 
     @@all 
   end

   def self.find_by_specialty(spec)
     self.all.select do |doc|
       doc.specialty == spec 
     end
   end

   def appointments 
     Appointment.all.select do |appt| 
       appt.doctor == self 
     end
   end

   def patients 
    appointments.map do |appt|
       appt.patient
     end
   end 

   def patient_names 
     patients.map do |patient| 
       patient.name
     end
   end

   def reschedule_appointment(current_date, new_date)
     appointments.map do |appt| 
       if appt.date == current_date
         appt.date = new_date 
         return appt
      end
     end 
   end
 end