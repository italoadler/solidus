module SolidusPaperclip::Gallery
  class Product
    def initialize(product)
      @product = product
    end

    # A list of all images associated with this gallery
    #
    # @return [Enumerable<Spree::Image>] all images in the gallery
    def images
      @images ||= @product.variant_images
    end
  end

  class Variant
    def initialize(variant)
      @variant = variant
    end

    # A list of all images associated with this gallery
    #
    # @return [Enumerable<Spree::Image>] all images in the gallery
    def images
      @images ||= @variant.images
    end
  end
end
