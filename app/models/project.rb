class Project < ActiveRecord::Base
  include Workflow

  workflow do
    state :new do
      event :submit, transitions_to: :approved
    end

    state :approved
  end

end
