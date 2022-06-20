# frozen_string_literal: true

require_relative 'hexlet_code/version'
require_relative 'hexlet_code/tag'
require_relative 'hexlet_code/form'

# Service for generation forms
module HexletCode
  class Error < StandardError; end
  include Tag
  extend Form
end
