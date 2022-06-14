query = ["cheese"; "sauce"; "french"];
query = cellstr(query);

[word_to_index, freq_matrix, global_freq] = reader();

%%[T, S, D] = svds(freq_matrix, 2);
[T, S, D] = svd(freq_matrix, 'econ');

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
  
  similarities = zeros(size(freq_matrix)(2), 2);
  query_vector = query_vector' * T * inv(S);
  for i=1:size(freq_matrix)(2)
    d = freq_matrix(:,i)' * T * inv(S);
    cosSimilarity = sum(query_vector.*d)/sqrt(sum(query_vector.^2)*sum(d.^2));
    similarities(i, :) = [i, cosSimilarity];
  endfor 

  sortrows(similarities, -2)
endwhile


