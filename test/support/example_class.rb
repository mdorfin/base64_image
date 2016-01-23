class ExampleClass
  include Base64Image
  attr_accessor :image
  base64image_to :image
end
