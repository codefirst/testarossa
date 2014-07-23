require 'rails_helper'

describe TestCaseStepResult do
  let(:step_result) { TestCaseStepResult.create(title: 'result title', description: '- description') }

  context 'markdown description' do
    subject { step_result.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
