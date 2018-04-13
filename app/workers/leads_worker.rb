class LeadsWorker
  require 'csv'
  include Sidekiq::Worker
<<<<<<< HEAD
 
=======

>>>>>>> 3b388eaa9563ac919fe03524d50d4699e101889e
  def perform(leads_file)
    CSV.foreach(leads_file, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 3b388eaa9563ac919fe03524d50d4699e101889e
