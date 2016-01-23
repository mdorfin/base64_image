require 'test_helper'

class Base64ImageTest < Minitest::Test
  def setup
    @subject = ExampleClass.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Base64Image::VERSION
  end

  def test_that_subject_respond_to_generated_method
    assert_respond_to @subject, :base64_image=
  end

  def test_proxy
    base64_string = Base64.encode64("\xE5\xA5\xBD")
    arg = "data:image/png;base64," << base64_string
    @subject.base64_image = arg
    assert_equal @subject.image.read, Base64.decode64(base64_string)
  end
end
