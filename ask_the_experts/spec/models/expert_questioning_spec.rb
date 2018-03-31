require 'spec_helper_lite'
needs 'models'
require 'expert_questioning'

describe ExpertQuestioning do
  it 'initializes with a questioner and a question' do
    questioner = Object.new
    question = 'what?'
    expect do
      described_class.new(questioner, question)
    end.to_not raise_error
  end
  
  it 'errors without a questioner and question' do
    expect do
      described_class.new
    end.to raise_error(ArgumentError, %r{0 for 2})
  end

  context 'when starting the questioning' do
    it 'assigns an available expert to the question'
    it 'notifies the questioner that the answer is queued'
    it 'notifies the assigned expert of the question'
  end

  context 'when finishing the questioning' do
    it 'stores the expert answer'
    it 'notifies the questioner of the answer'
  end
end
