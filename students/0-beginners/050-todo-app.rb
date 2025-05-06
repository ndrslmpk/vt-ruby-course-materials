require 'json'

class Todo
  attr_accessor :id, :title, :done

  def initialize(id, title, done = false)
    @id = id
    @title = title
    @done = done
  end

  def to_h
    { id: @id, title: @title, done: @done }
  end
end

class TodoApp
  FILE = 'todos.json'

  def initialize
    @todos = load_todos
  end

  def run
    loop do
      puts "\n--- TODO APP ---"
      puts "1. List Todos"
      puts "2. Add Todo"
      puts "3. Mark Done"
      puts "4. Delete Todo"
      puts "5. Exit"
      print "Choose an option: "
      choice = gets.chomp.to_i

      case choice
      when 1 then list_todos
      when 2 then add_todo
      when 3 then mark_done
      when 4 then delete_todo
      when 5 then break
      else puts "Invalid option!"
      end
    end
  end

  private

  def load_todos
    return [] unless File.exist?(FILE)

    JSON.parse(File.read(FILE), symbolize_names: true).map do |t|
      Todo.new(t[:id], t[:title], t[:done])
    end
  end

  def save_todos
    File.write(FILE, JSON.pretty_generate(@todos.map(&:to_h)))
  end

  def list_todos
    puts "\nYour Todos:"
    if @todos.empty?
      puts "No todos yet."
    else
      @todos.each do |t|
        status = t.done ? "✓" : "✗"
        puts "#{t.id}. [#{status}] #{t.title}"
      end
    end
  end

  def add_todo
    print "Enter todo title: "
    title = gets.chomp
    id = (@todos.map(&:id).max || 0) + 1
    @todos << Todo.new(id, title)
    save_todos
    puts "Todo added."
  end

  def mark_done
    print "Enter ID to mark as done: "
    id = gets.chomp.to_i
    todo = @todos.find { |t| t.id == id }
    if todo
      todo.done = true
      save_todos
      puts "Todo marked as done."
    else
      puts "Todo not found."
    end
  end

  def delete_todo
    print "Enter ID to delete: "
    id = gets.chomp.to_i
    before = @todos.size
    @todos.reject! { |t| t.id == id }
    if @todos.size < before
      save_todos
      puts "Todo deleted."
    else
      puts "Todo not found."
    end
  end
end

TodoApp.new.run
