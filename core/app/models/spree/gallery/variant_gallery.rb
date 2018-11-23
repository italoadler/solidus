# frozen_string_literal: true

require 'solidus_paperclip'
require 'solidus_paperclip/gallery'

module Spree
  module Gallery
    class VariantGallery < SolidusPaperclip::Gallery::Variant
      def initialize(*)
        ::Spree::Deprecation.warn("Spree::Gallery::VariantGallery is deprecated use SolidusPaperclip::Gallery::Variant instead")
        super
      end
    end
  end
end
