function ret = concatVectorComplexNumbers(vec)
  ret = '';
  for i=1:length(vec),
    ret = cstrcat(ret,num2str(real(vec(i))));
    if imag(vec(i))!=0,
      if imag(vec(i))>0,
        ret = cstrcat(ret,'+');
      end;
      ret = cstrcat(ret,num2str(imag(vec(i))));
      ret = cstrcat(ret,'j');
    end;
    ret = cstrcat(ret,'  ');
  end;
endfunction