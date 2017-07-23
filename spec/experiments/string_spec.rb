require 'spec_helper'
describe String do
	describe '#<<' do
		example 'nilの追加' do
			pending('調査中')
			s = "ABC"
			s  << nil
			expect(s.size).to eq(4)
		end
	end
end
