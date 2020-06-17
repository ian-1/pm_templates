class Template
  def self.see_templates
    '1) Return holding deposit - offer not formally accepted'
  end

  def self.open_template(template)
    text = []
    file = File.open("#{template}.drama", 'r')
    file.readlines.each do |line|
      text.push(line[0..-2])   # cuts ' \n' left by puts
    end
    file.close
    text
  end

  def self.read_tree(path)
    list = []
    question = []
    file = File.open('.\templates\question.drama', 'r')
    file.readlines.each do |line|
      list.push(line[0..-2])   # cuts ' \n' left by puts
    end
    file.close
    i = 0
    j = 0
    list.each do
      if i == 0
        question[0] = list[i]
      elsif i % 3 == 1
        array = []
        j += 1
        question[j] = array
        question[j][0] = list[i]
      elsif i % 3 == 2
        array = []
        question[j][1] = array
        question[j][1][0] = list[i]
      else
        question[j][1][1] = list[i].split(', ')
      end
      i += 1
    end
  question
  end
end
