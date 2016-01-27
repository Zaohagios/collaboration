module BoardsHelper
    def board_list(board)
        board_color = '" class="list-group-item list-group-item-info">'
        board_msgs = '<span class="badge">0</span>'
        ('<a href="' + board_path(board) + board_color + board_msgs + board.name + '</a>').html_safe 
    end
end
