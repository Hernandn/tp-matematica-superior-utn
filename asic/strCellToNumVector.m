function vector = strCellToNumVector(cell)
  for i=1:length(cell),
    cell{i}=str2num(cell{i});
  end;
  vector = cell2mat(cell);
endfunction