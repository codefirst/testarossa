require 'rails_helper'

describe Project do
  let(:project) { Project.create(name: 'project name', description: '- description') }

  context 'markdown description' do
    subject { project.description_to_html }
    it { is_expected.to eq("\n<ul>\n<li>description</li>\n</ul>\n") }
  end
end
