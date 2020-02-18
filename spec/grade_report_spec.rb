require 'grade_report'

describe GradeReportClass do
  describe '#grade_report' do
    it 'returns Green: 1 when passed 1 green' do 
      expect(subject.grade_report("Green")).to eq "Green: 1"
    end

    it 'returns Amber: 1 when passed 1 Amber' do 
      expect(subject.grade_report("Amber")).to eq "Amber: 1"
    end
  end
end