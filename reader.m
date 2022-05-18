function str = reader()
  text_list = [];
  freq_matrix = [0];
  text = textread("test1.txt", "%s"),;
  for i = 1:length(text)
    text(i,:) = tolower(text(i,:));
    text(i,:) = strrep(text(i,:),".","");
    text(i,:) = strrep(text(i,:),",","");
    text(i,:) = strrep(text(i,:),"!","");
    text(i,:) = strrep(text(i,:),"?","");
    % check if this word is already contained in text_list, otherwise add it
    if ~any(strcmp(text_list,text(i,:)))
      text_list = [text_list; text(i,:)];
    end
    % increment the frequency of this word
    freq_matrix(:,i) = freq_matrix(:,i) + 1;
  endfor
  text_list
  freq_matrix
