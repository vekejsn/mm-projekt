function [B] = entropy(A)
  B = zeros(size(A, 1), size(A, 2));
  for vrstica = 1:size(A, 1) 
    g_vrstica = sum(A(vrstica, :));
    G_i = 1;
    for stolpec = 1:size(A, 2)
      p_ij = A(vrstica, stolpec) / g_vrstica;
      if p_ij == 0
        continue;
      endif
      G_i = G_i - (p_ij * log2(p_ij))/log2(size(A, 2));
    endfor
    % G_i
    for stolpec = 1:size(A, 2)
      B(vrstica, stolpec) = G_i * log2(A(vrstica, stolpec) + 1);
    endfor
  endfor
%   B
endfunction
