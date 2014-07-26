require 'rails_helper'

describe Trace do
  let(:trace) { Trace.create(title: 'result title', description: '- description') }

  context 'markdown description' do
    subject { trace.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
