module AssignmentsHelper
    def assignment_list(a)
        case a.level
        when 1
            a_level = "success"
        when 2
            a_level = "info"
        when 3
            a_level = "info"
        when 4
            a_level = "warning"
        when 5
            a_level = "danger"
        else
            a_level = "info"
        end
        a_color = '" class="list-group-item list-group-item-' + a_level + '">'
#        a_msgs = '<span class="badge">0</span>'
        ('<a href="' + assignment_path(a) + a_color + a.subject + '</a>').html_safe 
    end    
end
