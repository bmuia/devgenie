module ProjectsHelper
    def status_class(status)
      case status.downcase
      when 'ongoing'
        'ongoing'
      when 'completed'
        'completed'
      when 'paused'
        'paused'
      when 'cancelled'
        'cancelled'
      when 'pending'
        'pending'
      else
        ''
      end
    end
    

  end
  