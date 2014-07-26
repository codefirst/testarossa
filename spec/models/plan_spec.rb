require 'rails_helper'

describe Plan do
  let(:plan) { Plan.create(title: 'testcase title', description: '- description') }

  context 'markdown description' do
    subject { plan.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
