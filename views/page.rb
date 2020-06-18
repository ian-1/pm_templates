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

  def self.question_with_options(question)
    puts (question[0])
    i = 0
    question.each do |option|
      if i != 0
        puts "      - #{option[0]}"
      end
      i += 1
    end
    input = gets.chomp
    input
  end

  def self.show_text(text)
    new_page()
    line_break()
    puts text
    line_break()
  end
end
