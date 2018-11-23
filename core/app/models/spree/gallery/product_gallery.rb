# frozen_string_literal: true

require 'solidus_paperclip'
require 'solidus_paperclip/gallery'

module Spree
  module Gallery
    class ProductGallery < SolidusPaperclip::Gallery::Product
      def initialize(*)
        ::Spree::Deprecation.warn("Spree::Gallery::ProductGallery is deprecated use SolidusPaperclip::Gallery::Product instead")
        super
      end
    end
  end
end
