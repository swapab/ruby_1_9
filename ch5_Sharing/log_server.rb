require "gserver"

class LogServer < GServer
  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_end_of_log_file
  end

  private

  def get_end_of_log_file
    File.open('/var/log/syslog') do |log|
      log.seek(-1000, IO::SEEK_END)
      log.gets
      log.read
    end
  rescue Exception => e
    "======= Exception Thrown From class : #{e.class} with message : #{e.message} ======"
  end
end

server = LogServer.new

server.start.join