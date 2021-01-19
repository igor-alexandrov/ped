# frozen_string_literal: true

require 'ped/version'
require 'ped/domains'

module Ped
  class Error < StandardError; end

  class << self
    def public_email_domain?(domain)
      domain = domain.to_s.strip

      return false if domain.empty?

      DOMAINS.include?(domain)
    end
  end
end
