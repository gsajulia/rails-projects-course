class Counter
    def self.calculate_percent_complete(completed_task, total_tasks)
        completed_task.to_f / total_tasks.to_f * 100
    end
end