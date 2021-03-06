require 'rails_helper'

describe Testcase do
  let(:testcase) { Testcase.create(title: 'testcase title', description: '- description') }

  context 'markdown description' do
    subject { testcase.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
