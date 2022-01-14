require_relative 'app_states/input_from'
require_relative 'app_states/wnloads/ruby-starter-project-7b061f57f00b0534d004e690bd1129756a5bdba0/ruby-starter-project-7b061f57f00b0534d004e690bd1129756a5bdba0/lib/app_states/exit'

class Application
  def run
    state = InputFrom.new
    until state.is_a? Exit
      state.render
      state = state.next
    end
  end
end
