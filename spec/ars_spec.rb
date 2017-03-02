require "spec_helper"

RSpec.describe Ars do
  it "has a version number" do
    expect(Ars::VERSION).not_to be nil
  end

  describe  'Autoloads' do
    subject { |e| stub_const e.example_group.description, true }

    context 'Medium' do
      it { is_expected.to be }
    end

    context 'Familiar' do
      it { is_expected.to be }
    end

    context 'Doppleganger' do
      it { is_expected.to be }
    end
  end

end
