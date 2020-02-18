require 'grade_report'

describe GradeReportClass do 
  describe '#grade_report' do 
    it 'returns an empty string when passed one' do 
      expect(subject.grade_report("")).to eq ""
    end 
  end 
end 