# frozen_string_literal: false

# Generating html tags
module Tag
  def self.build(tag, attrs = {}, &block)
    text = yield if block
    tail = "#{text}</#{tag}>"
    attributes = ''

    attrs.map { |key, value| attributes << " #{key}='#{value}'" }
    head = "<#{tag}#{attributes}>"

    block ? head.concat(tail) : head
  end
end
