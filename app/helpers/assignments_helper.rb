module AssignmentsHelper
    def assignment_list(a)
        a_color = '" class="list-group-item list-group-item-info">'
#        a_msgs = '<span class="badge">0</span>'
        ('<a href="' + assignment_path(a) + a_color + a.subject + '</a>').html_safe 
    end    
end
