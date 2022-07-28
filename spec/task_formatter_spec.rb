require "task_formatter"

# returns an empty box with the task title if task incomplete
# returns a checked box with the task title if task complete

RSpec.describe TaskFormatter do
  it "returns a checked box with the task title if task is complete" do 
    task1 = double(:task1, title: "walk the dog", complete?: false)
    tasks = TaskFormatter.new(task1)
    expect(tasks.format).to eq "[x] walk the dog "
  end

  it "returns an empty box with the task title if task is imcomplete" do 
    task1 = double(:task1, title: "walk the dog", complete?: true)
    tasks = TaskFormatter.new(task1)
    expect(tasks.format).to eq "[ ] walk the dog"
  end

end
