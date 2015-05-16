require 'spec_helper'
describe 'cuda' do

  context 'with defaults for all parameters' do
    it { should contain_class('cuda') }
  end
end
