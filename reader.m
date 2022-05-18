function str = reader()
  text_list = [];
  freq_matrix = [];
  document_list = {"test1.txt"; "test2.txt"};
  for i = 1:length(document_list)
    text = textread(document_list{i}, "%s"),;
    % add a column to freq_matrix for each word already in freq_matrix
    freq_matrix = [freq_matrix, zeros(rows(freq_matrix), 1)];
    for j = 1:length(text)
      text(j,:) = tolower(text(j,:));
      text(j,:) = strrep(text(j,:),".","");
      text(j,:) = strrep(text(j,:),",","");
      text(j,:) = strrep(text(j,:),"!","");
      text(j,:) = strrep(text(j,:),"?","");
      % check if this word is already contained in text_list, otherwise add it
      if ~any(strcmp(text_list,text(j,:)))
        text_list = [text_list; text(j,:)];
        % add a row to the end of freq_matrix for this new word
        freq_matrix = [freq_matrix; zeros(1, columns(freq_matrix))];
        % increment by 1
        freq_matrix(end,i) = freq_matrix(end,i) + 1;
      else
      % otherwise, increment the same index of the freq_matrix
      freq_matrix(strcmp(text_list,text(j,:)),i) = freq_matrix(strcmp(text_list,text(j,:)),i) + 1;
      end
    endfor
  endfor
  text_list
  freq_matrix
