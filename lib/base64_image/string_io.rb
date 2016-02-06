module Base64Image
  class StringIO < StringIO
    attr_accessor :extension

    def original_filename
      @original_filename ||= ['temp_image', extension].compact.join('.')
    end
  end
end
