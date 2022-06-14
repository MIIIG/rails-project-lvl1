module Tag
  def self.build(tag, *attrs, &block)
    attributes = ''

    attrs.first.to_a.to_h.each_pair{ |key, value| attributes << " #{key}='#{value}'" }

    "<#{tag}#{attributes}>#{yield}</#{tag}>" if block_given?
    "<#{tag}#{attributes}>"
  end
end