function compute_char(board_array, row, col)
    board_array[row, col] && return '*'
    rows, cols = size(board_array)
    row_range = max(1, row-1):min(rows, row+1)
    col_range = max(1, col-1):min(cols, col+1)
    count = sum(board_array[row_range, col_range])
    count > 0 ? '0' + count : ' '
end

function annotate(board)
    isempty(board) && return []
    isempty(board[1]) && return [""]
    board_array = map(c -> c == '*', mapreduce(collect, hcat, board))'
    board_array = map(i -> compute_char(board_array, i[1], i[2]), CartesianIndices(board_array))
    map(row -> join(board_array[row,:]), 1:length(board))
end
