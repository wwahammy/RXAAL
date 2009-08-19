
require "rxaal"
module JHAVE
  include RXaal
  
  JHAVE_URI = "http://www.uwosh.edu/jhave/ns"
  JHAVE_PREFIX = "jhave"
  
  autoload :JHAVEQuestions, 'jhave_questions'
  autoload :MCQuestion, 'mc_question'
  autoload :MSQuestion, 'ms_question'
  autoload :TFQuesiton, 'tf_question'
  autoload :FIBQuestion, 'fib_question'
  smrt_autoload :GenericQuestion, :AnswerOption
end