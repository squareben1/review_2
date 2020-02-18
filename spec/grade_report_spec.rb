require 'grade_report'

describe GradeReportClass do
  describe '#grade_report' do
    it 'returns green when passed it' do 
      expect(subject.grade_report("Green")).to eq "Green"
    end 
  end
end