require '.\lib\template'

template = Template.new
system('cls')
puts(template.see_templates)
input = gets.chomp
puts(template.select)
