require "resque"
require_relative "workerinclude"

Resque.enqueue TheJob, *ARGV.map(&:to_i)
