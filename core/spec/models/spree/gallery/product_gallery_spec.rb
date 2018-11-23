# frozen_string_literal: true

require 'rails_helper'
require 'spree/testing_support/shared_examples/gallery'

RSpec.describe Spree::Gallery::ProductGallery do
  let(:gallery) { described_class.new(product) }
  let(:product) { create(:product) }

  it 'is deprecated' do
    expect(Spree::Deprecation).to receive(:warn) do |message|
      expect(message).to match(/SolidusPaperclip::Gallery::Product\b/)
    end
    gallery
  end

  shared_context 'has multiple images' do
    let(:first_image) { build(:image) }
    let(:second_image) { build(:image) }

    before do
      product.images << first_image
      product.images << second_image
    end
  end

  context '(with silenced deprecation)' do
    before { allow(::Spree::Deprecation).to receive(:warn).and_return(nil) }
    it_behaves_like 'a gallery'
  end
end
