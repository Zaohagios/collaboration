module AssignmentsHelper
    def assignment_color(a)
        case a.level
        when 1
            "success"
        when 2
            "info"
        when 3
            "info"
        when 4
            "warning"
        when 5
            "danger"
        else
            "info"
        end
    end
    
    def assignment_user(a)
        User.find(a.owner).name
    end
end
