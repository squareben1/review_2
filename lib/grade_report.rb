class GradeReportClass
  def grade_report(string)
    green_count = string.count("G")
    amber_count = string.count("A")
    red_count = string.count("R")
    #string.split(,).length - greencount, red, amber - gives lenght of array with proepr colours removed i.e. uncounted 
    x = []
    if green_count > 0
      x.push("Green: #{green_count}")
    end
    if amber_count > 0
      x.push("Amber: #{amber_count}")
    end
    if red_count > 0
      x.push("Red: #{red_count}")
    end
    return x.join("\n")
  end
end