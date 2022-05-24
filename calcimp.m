function [fi, gi] = calcimp(freq_matrix, global_freq)
  % calculate sum of global_freq
  sum_global_freq = sum(global_freq);
  % divide every element of global_freq by sum_global_freq
  global_freq = global_freq ./ sum_global_freq
  % iterate through columns of freq_matrix
    for i = 1:size(freq_matrix, 2)
        % calculate sum of freq_matrix(:,i)
        sum_freq_matrix = sum(freq_matrix(:,i));
        % divide every element of freq_matrix(:,i) by sum_freq_matrix
        freq_matrix(:,i) = freq_matrix(:,i) ./ sum_freq_matrix;
        % calculate sum of freq_matrix(:,i) .* global_freq
    end
    % create fi as elementwise = log2(freq_matrix(i,j)+1)
    fi = log2(freq_matrix+1)
    % calc pij = fi(j)/global_freq(i)
    pij = fi ./ global_freq
    % number of documents is equal to number of columns in freq_matrix
    n = size(freq_matrix, 2)
    % iterate through rows of pij
    for i = 1:size(pij, 1)
        sum = 1;
        % iterate through columns of pij
        for j = 1:size(pij, 2)
            % sum += pij(i,j)
            sum -= pij(i,j) * log2(pij(i,j)) / log2(n)
        end
        gi(:,i) = sum;
        % test
    end
    

endfunction