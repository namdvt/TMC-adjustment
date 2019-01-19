function [ x ] = get_x( Pi,Pt )
%GET_X Summary of this function goes here
%   Detailed explanation goes here
K=255;
x = zeros(K,1);
for k=1:K
    min_idx = 0;
    min_val = 10;
    for l=1:K
        tmp_val = abs(Pt(l)-Pi(k));
        if tmp_val < min_val
            min_val = tmp_val;
            min_idx = l;
        end
    end
    x(k) = min_idx-1;
end

end

