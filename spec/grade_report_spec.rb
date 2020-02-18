require 'grade_report'

describe GradeReportClass do
  describe '#grade_report' do
    it 'returns Green: 1 when passed 1 green' do 
      expect(subject.grade_report("Green")).to eq "Green: 1"
    end
  end
end