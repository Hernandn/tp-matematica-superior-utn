function ret = concatVectorComplexNumbers(vec)
  ret = '';
  for i=1:length(vec),
    num = real(vec(i));
    if num==0,
      num = abs(num);#puede ser que traiga -0
    end;
    ret = cstrcat(ret,num2str(num));#parte real
    if imag(vec(i))!=0,#si tiene parte imaginaria
      if imag(vec(i))>0,
        ret = cstrcat(ret,'+');
      end;
      ret = cstrcat(ret,num2str(imag(vec(i))));
      ret = cstrcat(ret,'j');
    end;
    ret = cstrcat(ret,'  ');
  end;
endfunction