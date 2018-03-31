module Questioner
  def ask_question(question, expert)
    system.assign_question(question, expert)
    system.notify_questioner('Your question has been queued for an answer from one of our Experts!')
    expert.notify_new_question(question)
  end

  def notify_new_answer(question)
    Notifier.send_to(self, question: question
  end
end
