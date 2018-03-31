module Expert
  def answer_question(question, questioner)
    question.add_answer("Sell all your stocks!", from: self)
    questioner.notify_answered(question)
  end

  def notify_new_question(question)
    Notifier.send_to(self, question: question)
  end
end

