# Generated cron daemon

# Do your post daemonization configuration here
# At minimum you need just the first line (without the block), or a lot
# of strange things might start happening...
DaemonKit::Application.running! do |config|
  # Trap signals with blocks or procs
  # config.trap( 'INT' ) do
  #   # do something clever
  # end
  # config.trap( 'TERM', Proc.new { puts 'Going down' } )
end

# Configuration documentation available at http://rufus.rubyforge.org/rufus-scheduler/
# An instance of the scheduler is available through
# DaemonKit::Cron.scheduler

# To make use of the EventMachine-powered scheduler, uncomment the
# line below *before* adding any schedules.
# DaemonKit::EM.run

# Some samples to get you going:

# Will call #regenerate_monthly_report in 3 days from starting up
#DaemonKit::Cron.scheduler.in("3d") do
#  regenerate_monthly_report()
#end
#
#DaemonKit::Cron.scheduler.every "10m10s" do
#  check_score(favourite_team) # every 10 minutes and 10 seconds
#end
#
#DaemonKit::Cron.scheduler.cron "0 22 * * 1-5" do
#  DaemonKit.logger.info "activating security system..."
#  activate_security_system()
#end
#
# Example error handling (NOTE: all exceptions in scheduled tasks are logged)
#DaemonKit::Cron.handle_exception do |job, exception|
#  DaemonKit.logger.error "Caught exception in job #{job.job_id}: '#{exception}'"
#end

DaemonKit::Cron.scheduler.every("30s") do
  #rake = true

  #if rake
    `bundle exec rake -f '/Users/Ian/Documents/workspace/memory_hog/tasks/memory_hog.rake' memory_hog:hogit`
  #else
    #x = ""
    #100.times do |n|
      #Time.now.to_f.to_s.to_sym
      #x += Time.now.to_f.to_s
      #x.to_sym
      #x += ( rand(100) * rand(100) * rand(100) ).to_s
      #x.to_sym
      #x += ( rand(1000) ** rand(10000) * rand(100000000) ).to_s
      #x.to_sym
    #end
  #end
  #pid, size = `ps ax -o pid,rss | grep -E "^[[:space:]]*#{$$}"`.strip.split.map(&:to_i)
  #DaemonKit.logger.debug "Run at #{Time.now}"
end

# Run our 'cron' dameon, suspending the current thread
DaemonKit::Cron.run
