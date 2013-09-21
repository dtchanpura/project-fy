function psnr=PSNR_CALC(ori,diff)

if (size(ori) ~= size(diff))
  error('Dimesions of two arguments does not match.')
  psnr=NaN
  return;
   
elsif(ori==diff)
  disp('Images are identical: PSNR has infinite value')
  psnr_Value = Inf;
  return;   

else
  maxValue = double(max(ori(:)));
  mseImage = (double(A) - double(B)) .^ 2;
  [rows columns] = size(A);
  mse = sum(mseImage(:)) / (rows * columns);
  psnr_Value = 10 * log10( 256^2 / mse);
end

end
