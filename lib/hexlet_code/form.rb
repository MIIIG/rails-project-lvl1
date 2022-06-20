# frozen_string_literal: false

# Generating form
module Form
  def form_for(_user, url = { url: '#' }, &block)
    body = yield if block
    "<form action='#{url[:url]}' method='post'>#{body}\n</form>"
  end
end
