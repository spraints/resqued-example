# Run like this:
#
#     $ resqued spraints/config.rb

before_fork do
  require_relative "workerinclude"
  Resque.logger.level = Logger::INFO
end

worker_pool 3, interval: 0.5
queue 'resqued-example-queue'
