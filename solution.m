query = ["cheese"; "sauce"; "french"];
query = cellstr(query);

[word_to_index, freq_matrix, global_freq] = reader();
improved_freq_matrix = entropija(freq_matrix);

% 100 should be enough
[T, S, D] = svds(freq_matrix, 100);
[T_b, S_b, D_b] = svds(improved_freq_matrix, 100);

while (1== 1)
  usr_input = input("Enter search query: ", "s");
  query = strsplit(usr_input);
  query_vector = zeros(length(word_to_index), 1);
  
  for i=1:length(word_to_index)
      for j=1:length(query)
        if(strcmp(query(j), word_to_index(i)) == 1)
          query_vector(i) += 1;
        endif
      endfor
  endfor
 
  % Firstly try with naive method
  similarities = zeros(size(freq_matrix)(2), 2);
  qv_T_invS = query_vector' * T * inv(S);
  for i=1:size(freq_matrix)(2)
    d = freq_matrix(:,i)' * T * inv(S);
    cosSimilarity = sum(qv_T_invS.*d)/sqrt(sum(qv_T_invS.^2)*sum(d.^2));
    similarities(i, :) = [i, cosSimilarity];
  endfor 
  sortrows(similarities, -2)
  
  % Then search with improved method
  similarities = zeros(size(freq_matrix)(2), 2);
  qv_T_invS = query_vector' * T_b * inv(S_b);
  for i=1:size(freq_matrix)(2)
    d = improved_freq_matrix(:,i)' * T_b * inv(S_b);
    cosSimilarity = sum(qv_T_invS.*d)/sqrt(sum(qv_T_invS.^2)*sum(d.^2));
    similarities(i, :) = [i, cosSimilarity];
  endfor

  sortrows(similarities, -2)
endwhile


