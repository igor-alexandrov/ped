# frozen_string_literal: true
require 'set'

module Ped
  DOMAINS = File.readlines(File.join(File.dirname(__FILE__), 'domains.txt'))
    .map(&:strip)
    .to_set
    .freeze
end
