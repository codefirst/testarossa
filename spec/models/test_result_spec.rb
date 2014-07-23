require 'rails_helper'

describe TestResult do
  let(:result) { TestResult.create(title: 'result title', description: '- description') }

  context 'markdown description' do
    subject { result.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
