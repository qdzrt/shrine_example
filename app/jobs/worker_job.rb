class WorkerJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts 'active_job perform'
  end
end
