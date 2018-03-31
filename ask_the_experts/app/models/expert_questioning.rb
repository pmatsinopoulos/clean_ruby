# Primary Actor     : a regular user
# Goal              : user gains information about a specific finance question
# Supporting Actors : a financial expert
# Preconditions     : user is authenticated and authorized
#
class ExpertQuestioning
  def initialize(questioner, question_next)
    @questioner = questioner
    @question   = initialize_question(question_text)
    @expert     = available_expert
  end

  # 1. User submits a Question to System
  def start
    # 2. An available expert is assigned to the question.
    #   2.a. No expert is available.
    #   2.a.1 The user is notified that no expert is available.
    # 3. A notification is sent to the user that her question will be answered soon.
    # 4. The expert is notified of the unanswered question. 
  end
  
  # 5. The expert submits an answer to the question.
  def finish
     # 5.a. The expert determines that the question has already been answered.
     # 5.a.1. The expert assigns the question to an existing answer.
     # 6. The user is notified of the answer to her question.
  end

  private

  def initialize_question(text)
    Question.new(text: text)
  end
  
  def available_expert
    Expert.first_available
  end
end

