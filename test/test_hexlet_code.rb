# frozen_string_literal: true

require "test_helper"
require "hexlet_code/tag"

class TestHexletCode < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tags_building
    assert Tag.build('br') == "<br>"
    assert Tag.build('img', src: 'path/to/image') == "<img src='path/to/image'>"
    assert Tag.build('input', type: 'submit', value: 'Save') == "<input type='submit' value='Save'>"
    assert Tag.build('label') { 'Email' } == '<label>Email</label>'
    assert Tag.build('label', for: 'email') { 'Email' } == "<label for='email'>Email</label>"
  end
end
