module BoardsHelper
    def board_list(board)
        board_color = '" class="list-group-item list-group-item-info">'
        board_count = Assignment.where(board: board.group).find_each.count
        board_msgs = '<span class="badge">' + board_count.to_s + '</span>'
        ('<a href="' + board_path(board) + board_color + board_msgs + board.name + '</a>').html_safe 
    end
end
