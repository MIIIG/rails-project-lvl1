module Tag
  def self.build(tag, attrs = {}, &block)
    text = yield if block_given?
    tail = "#{text}</#{tag}>"
    attributes = ''

    attrs.map{ |key, value| attributes << " #{key}='#{value}'" }
    head = "<#{tag}#{attributes}>"

    block_given? ? head.concat(tail) : head  
  end
end