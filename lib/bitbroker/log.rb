require 'logger'

module BitBroker
  class Log
    DEFAULT_LOGFILE = '/tmp/bitbroker.log'

    def self.method_missing(m, *args, &block)
      logger.method(m).call(*args)
    end

    private
    def self.logger
      @logger ||= init_logger
    end

    def self.init_logger
      Logger.new(logfile)
    end

    def self.logfile
      BitBroker::Config['logfile'] != nil ? BitBroker::Config['logfile'] : DEFAULT_LOGFILE
    end
  end
end
