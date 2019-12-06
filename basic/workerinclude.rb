host = ENV['REDIS_HOST'] || 'localhost'
port = ENV['REDIS_PORT'] || 6379
Resque.redis = Redis.new(:host => host, :port => port)

class TheJob
  def self.queue
    "resqued-example-queue"
  end

  def self.perform(arg = 1)
    puts "THEJOB IS STARTING #{arg}"
    sleep(arg)
    puts "THEJOB IS FINISHED"
  end
end
