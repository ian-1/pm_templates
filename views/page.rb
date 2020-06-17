class Page
  def self.new_page()
    system('cls')
  end

  def self.line_break()
    puts ()
    puts '--------------------------------------------'
    puts ()
  end

  def self.question(question)
    puts (question)
    input = gets.chomp
    input
  end

  def self.show_template(text)
    new_page()
    line_break()
    puts text
    line_break()
  end
end
