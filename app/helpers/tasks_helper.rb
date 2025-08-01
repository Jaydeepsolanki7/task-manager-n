module TasksHelper
  def status_badge_class(status)
    case status.to_s
      when 'todo', '0' then 'badge bg-secondary'
      when 'in_progress', '1' then 'badge bg-primary'
      when 'done', '2' then 'badge bg-success'
      else 'badge bg-light text-dark'
    end
  end
end
