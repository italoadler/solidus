# frozen_string_literal: true

require 'rails_helper'
require 'spree/testing_support/shared_examples/gallery'

RSpec.describe Spree::Gallery::VariantGallery do
  let(:gallery) { described_class.new(variant) }
  let(:variant) { Spree::Variant.new }

  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn) do |message|
      expect(message).to match(/SolidusPaperclip::Gallery::Variant\b/)
    end
    gallery
  end

  shared_context 'has multiple images' do
    let(:first_image) { build(:image) }
    let(:second_image) { build(:image) }

    before do
      variant.images << first_image
      variant.images << second_image
    end
  end

  context '(with silenced deprecation)' do
    before { allow(::Spree::Deprecation).to receive(:warn).and_return(nil) }
    it_behaves_like 'a gallery'
  end
end
