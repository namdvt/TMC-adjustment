function [ h ] = getHistogram( img )
    x = zeros(1,255);
    [r,c] = size(img);
    
    for i=1:r
        for j=1:c
          x(img(i,j)) = x(img(i,j)) + 1;
        end
    end
    h = x;
end
