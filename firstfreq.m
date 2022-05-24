function a = firstfreq(freq_matrix)
    % iterate through columns
    for i = 1:size(freq_matrix,2)
        % get sum of column
        sum_col = sum(freq_matrix(:,i));
        % divide each element in column by sum of column
        freq_matrix(:,i) = freq_matrix(:,i)/sum_col;
    end
    a = freq_matrix;