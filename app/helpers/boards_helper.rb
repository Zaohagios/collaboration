module BoardsHelper
    def board_list(board)
        board_color = '" class="list-group-item list-group-item-info">'
        board_count = Assignment.where(board: board.group).find_each.count
        board_msgs = '<span class="badge">' + board_count.to_s + '</span>'
        ('<a href="' + board_path(board) + board_color + board_msgs + board.name + '</a>').html_safe 
    end
    
    def my_board
        board_color = '" class="list-group-item list-group-item-success">'
        board_count = Assignment.where(owner: session[:user_id]).find_each.count
        board_msgs = '<span class="badge">' + board_count.to_s + '</span>'
        ('<a href="' + boards_myboard_path + board_color + board_msgs + 'My Assignments' + '</a>').html_safe         
    end
end
