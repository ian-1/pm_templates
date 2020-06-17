class Template
  def self.see_templates
    '1) Return holding deposit - offer not formally accepted'
  end

  def self.get_text(template)
    text = []
    file = File.open("#{template}.drama", "r")
    file.readlines.each do |line|
      text.push(line[0..-2])   # cuts ' \n' left by puts
    end
    file.close
    text
  end

  def self.select
    get_text('ap')
  end
end
