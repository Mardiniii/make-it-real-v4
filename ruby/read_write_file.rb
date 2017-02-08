require 'byebug'

def load_tasks(file_name)
  return nil unless File.file?(file_name)
  task = [ ]

  File.foreach(file_name) do |line|
    data = line.chomp.split(',')
    hash_data = { id: data[0].to_i, name: data[1], done: data[2] == 'true'}
    task.push(hash_data)
  end

  task
end

def save_tasks(file_name, tasks)
  file = File.open(file_name, 'w')
  tasks.each do |hash_task|
    task = "#{hash_task[:id]},#{hash_task[:name]},#{hash_task[:done]}\n"
    file.write(task)
  end
end

save_tasks('tasks.txt', [
  { id: 1, name: "Hacer tareas nuevo", done: true },
  { id: 2, name: "Lavar ropa nuevo", done: false }
])
