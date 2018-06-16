require "vault_activerecord/version"
require 'vault'
require 'logger'

module VaultActiverecord
  $database_creds = {}
  class << self  
    attr_accessor :logger

    def logger 
      @logger = ::Logger.new(STDOUT).tap do |log|
        log.progname = 'vault_activerecord' 
      end
    end
  end

  def self.patch
    $database_creds = yield
    logger.info 'New credentials set'
  end
  # Your code goes here...
end


