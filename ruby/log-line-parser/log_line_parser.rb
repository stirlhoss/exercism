require 'debug'
class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(": ").pop.strip
  end

  def log_level
    @line.split(': ').shift.gsub('[', '').gsub(']', '').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
