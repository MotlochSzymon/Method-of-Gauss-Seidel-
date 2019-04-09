%  Liczy sumy w wierszach dla nowego rozwi¹zania B
sumy_w_wierszach = zeros( rozmiar_A, 1);

for  i =  1 : 1 : rozmiar_A 
    for j = 1 : 1 : rozmiar_A
        sumy_w_wierszach(i) = sumy_w_wierszach(i) + abs(B ( i , j) );
    end
end