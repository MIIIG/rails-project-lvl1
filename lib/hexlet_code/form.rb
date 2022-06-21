# frozen_string_literal: false

# Generating form
module Form
  def form_for(user, url = { url: '#' }, &block)
    body = yield(user) if block
    "<form action='#{url[:url]}' method='post'>#{body}\n</form>"
  end
end
