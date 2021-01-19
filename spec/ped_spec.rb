# frozen_string_literal: true

RSpec.describe Ped do
  it 'has a version number' do
    expect(Ped::VERSION).not_to be nil
  end

  describe '#public_email_domain?' do
    it 'returns true for public domain' do
      expect(Ped.public_email_domain?('gmail.com')).to be_truthy
    end

    it 'returns false for corporate domain' do
      expect(Ped.public_email_domain?('jetrockets.pro')).to be_falsy
    end

    it 'returns false for blank string' do
      expect(Ped.public_email_domain?('')).to be_falsy
    end

    it 'returns false for nil' do
      expect(Ped.public_email_domain?(nil)).to be_falsy
    end
  end
end
