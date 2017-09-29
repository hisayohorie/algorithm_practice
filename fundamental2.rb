#1 Create a Task class with a description and due_date (both strings). 
#  Define an initialize method as well as "reader" and "writer" methods for those attributes. 
#  Try creating three instances of this class and test out the reader and writer methods.

class Task
	attr_reader :description, :due_date
	attr_writer :description, :due_date

	def initialize(description, due_date)
		@description = description
		@due_date = due_date
	end
end

firstTask = Task.new("algorithm", "Sept 24th")
secondTask = Task.new("ruby", "Oct 24th")
thirdTask = Task.new("python", "Nov 24th")


#2 Create a TodoList class with a tasks array (which will contain instances of the Task class). 
#  Create an initialize method and an add_task method that allows you to pass in an instance of your Task class. 
#  Try creating a todo list and adding your three tasks to it.

class TodoList

	def initialize
		@tasks =[]
	end

	def add_task(new_task)
		@tasks.push(new_task)
	end
end

list = TodoList.new
list.add_task(firstTask)
list.add_task(secondTask)
list.add_task(thirdTask)
