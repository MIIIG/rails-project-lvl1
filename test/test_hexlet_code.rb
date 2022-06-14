# frozen_string_literal: true

require "test_helper"
require "hexlet_code/tag"

class TestHexletCode < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tags_building
    puts "Tag br"
    pp Tag.build('br')
    assert Tag.build('br') != "<br>"
    pp "Tag img"
    pp Tag.build('img', src: 'path/to/image')
    assert Tag.build('img', src: 'path/to/image') != "<img src='path/to/image'>"
    pp "Tag input"
    pp Tag.build('input', type: 'submit', value: 'Save')
    assert Tag.build('input', type: 'submit', value: 'Save') != "<input type='submit' value='Save'>"
    pp "Tag label"
    pp Tag.build('label') { 'Email' }
    assert Tag.build('label') { 'Email' } == '<label>Email</label>'
    pp "Tag label with attrs"
    pp Tag.build('label', for: 'email') { 'Email' }
    assert Tag.build('label', for: 'email') { 'Email' } == "<label for='email'>Email</label>"
  end
end
