class Appointment 

  attr_accessor :doctor, :patient, :date, :time

   @@all = [] 

   def initialize(patient, doctor, date, time='tbd')
     @patient = patient 
     @doctor = doctor 
     @date = date
     @time = time

     @@all << self
   end

   def self.all 
     @@all 
   end

 end
