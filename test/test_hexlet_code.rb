# frozen_string_literal: true

require 'test_helper'
require 'hexlet_code/tag'
require 'hexlet_code/form'

class TestHexletCode < Minitest::Test
  def setup
    Struct.new('User', :name, :job, keyword_init: true)
    @user = Struct::User.new name: 'Rob', job: 'hexlet'
    @file =  File.open("test/fixtures/form.html")
  end

  def test_that_it_has_a_version_number
    refute_nil ::HexletCode::VERSION
  end

  def test_tags_building
    assert Tag.build('br') == '<br>'
    assert Tag.build('img', src: 'path/to/image') == "<img src='path/to/image'>"
    assert Tag.build('input', type: 'submit', value: 'Save') == "<input type='submit' value='Save'>"
    assert Tag.build('label') { 'Email' } == '<label>Email</label>'
    assert Tag.build('label', for: 'email') { 'Email' } == "<label for='email'>Email</label>"
  end

  def test_form_generation
    assert HexletCode.form_for(@user, url: '/users') == "<form action='/users' method='post'>\n</form>"
  end

  def test_fields_generation
    pp @file.read
    assert HexletCode.form_for(@user, url: '/users', job: 'hexlet', gender: 'm') == @file.read
    assert HexletCode.form_for(@user, url: '/users', job: 'hexlet') == @file.read
    @file.close
  end
end
