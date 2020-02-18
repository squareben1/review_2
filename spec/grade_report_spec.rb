require 'grade_report'

describe GradeReportClass do
  describe '#grade_report' do
    it 'returns Green: 1 when passed 1 green' do 
      expect(subject.grade_report("Green")).to eq "Green: 1"
    end

    it 'returns Red: 1 when passed 1 Red' do 
      expect(subject.grade_report("Red")).to eq "Red: 1"
    end

    it 'returns Amber: 1 when passed 1 Amber' do 
      expect(subject.grade_report("Amber")).to eq "Amber: 1"
    end

    it 'returns Green: 2 when passed 2 Greens' do 
      expect(subject.grade_report("Green, Green")).to eq "Green: 2"
    end

    it 'returns Amber: 2 when passed 2 Ambers' do 
      expect(subject.grade_report("Amber, Amber")).to eq "Amber: 2"
    end

    it 'returns Green: 1\nAmber: 1 when passed 1 green 1 Amber' do 
      expect(subject.grade_report("Green, Amber")).to eq "Green: 1\nAmber: 1"
    end

    it 'returns Green: 1\nAmber: 2 when passed 1 green 2 Ambers' do 
      expect(subject.grade_report("Green, Amber, Amber")).to eq "Green: 1\nAmber: 2"
    end

    it 'returns Green: 1\nAmber: 1\nRed: 1 when passed 1 green 1 Amber, 1 red' do 
      expect(subject.grade_report("Green, Amber, Red")).to eq "Green: 1\nAmber: 1\nRed: 1"
    end

    it 'returns Green: 1\nAmber: 2 when passed 1 green 2 Ambers' do 
      expect(subject.grade_report("Green, Amber, Green, Red, Amber, Red")).to eq "Green: 2\nAmber: 2\nRed: 2"
    end

  end
end