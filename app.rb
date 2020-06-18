require '.\lib\template'
require '.\lib\action'
require '.\views\page'

def standardise_answer(user_answer, standard_answer, acepted_answers)
  acepted_answers.each { |answer| user_answer = standard_answer if user_answer == answer }
  user_answer
end

def select_option(question, answers)
  return_answer = Page.question(question)
  answers.each { |answer| return_answer = standardise_answer(return_answer, answer[0], answer[1]) }
  return_answer
end

def see_template()
  path = ""
  loop do
    question = Template.read_tree(path)
    break if question[0] == 'End'
    if question[0] == 'File'
      file = ".\\templates\\#{path}template"
      text = Template.open_template(file)
      Page.show_text(text)
      break
    end
    print 'sfdsgfsd' if question[0] == 'File'
    return_answer = Page.question_with_options(question)
    question[1..-1].each { |answer| return_answer = standardise_answer(return_answer, answer[1][0], answer[1][1]) }
    path += "#{return_answer}\\"
  end
end

def record_action()
  message =   Page.question('Action to record:')
  Action.record('user', message)
end

def list_actions()
  list = Action.show_list('user')
  Page.show_text(list)
end

def action_options()
  loop do
    question = 'record action or see action list (or back)?'
    answers = [['record', ['', 'r', 'record', 'rec', 'record action', 'record actions']],
               ['list', ['s', 'see', 'see action', 'see actions', 'see action list', 'see actions list', 'l', 'list', 'action list', 'actions list']],
               ['back', ['q', 'quit', 'e', 'exit', 'break', 'b', 'r', 'return']]]
    action_option = select_option(question, answers)
    record_action() if action_option == 'record'
    list_actions() if action_option == 'list'
    break if action_option == 'back'
  end
end

system('cls')
Page.new_page()
loop do
  question = 'See template or action options (or quit)?'
  answers = [['template', ['', 's', 'see', 'temp', 'templ', 'see template', 'see templates', 't']],
             ['action', ['o', 'options', 'op', 'act', 'ac', 'action options', 'action option', 'a']],
             ['quit', ['q', 'exit', 'break']]]
  see_template_or_record_action = select_option(question, answers)
  see_template() if see_template_or_record_action == 'template'
  action_options() if see_template_or_record_action == 'action'
  break if see_template_or_record_action == 'quit'
end
