require '.\lib\template'

template = Template.new
system('cls')
puts(Template.see_templates)
input = gets.chomp
puts(template.select)
