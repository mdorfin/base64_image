require "base64_image/version"
require "base64_image/string_io"
require "base64"

module Base64Image
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def base64image_to(attr_name)
      dest_attr = String(attr_name) << '='
      source_attr = 'base64_' << dest_attr
      define_method source_attr do |data|
        send dest_attr, self.class.base64_to_binary(data)
      end
      self
    end

    def base64_to_binary(string_image_data)
      if String(string_image_data).match(%r{^data:(.*?);(.*?),(.*)$})
        # $1 - MIME, e.g. "image/png"
        # $2 - encoder, e.g. "base64"
        # $3 - encoded binary data
        binary_data = Base64.decode64($3)
        extension = $1.split('/')[1]
        Base64Image::StringIO.new(binary_data)
      end
    end
  end
end
