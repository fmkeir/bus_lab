require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
require_relative('../person')

class PersonTest < Minitest::Test
  def setup
    @person = Person.new("Noel", 25)
  end

  def test_get_name
    assert_equal("Noel", @person.name)
  end

  def test_get_age
    assert_equal(25, @person.age)
  end
end
