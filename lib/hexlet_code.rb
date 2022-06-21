# frozen_string_literal: true

require_relative 'hexlet_code/version'
require_relative 'hexlet_code/tag'
require_relative 'hexlet_code/form'
require_relative 'hexlet_code/input'

# Service for generation forms
module HexletCode
  class Error < StandardError; end
  include Tag
  extend Form
  extend Input
end
