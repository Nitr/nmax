require 'nmax'

RSpec.describe Nmax do
  describe '.call' do
    let(:count) { 3 }
    let(:numbers) { [100, 101, 106, 103, 2, 104, 105] }
    let(:sorted_numbers) { numbers.sort }
    let(:input) do
      %(
        This is first row #{numbers[0]} with numbers #{numbers[1]}
        #{numbers[2]} Thisis#{numbers[3]} second raw
        #{numbers[4]}This#{numbers[5]}this thirdr#{numbers[6]}
      )
    end

    before do
      stub_const('STDIN', StringIO.new(input))
    end

    subject { described_class.call(count) }

    it { is_expected.to be_a_kind_of(Array) }
    it { is_expected.to all(be_an(Integer)) }
    it { is_expected.to all(be_an(Integer)) }
    it { is_expected.to match_array(sorted_numbers.last(count)) }
    it { is_expected.to satisfy('length eq count') { |r| r.length == count } }
  end
end
