%  Liczy sumy w kolumnach dla nowego rozwi¹zania B
 sumy_w_kolumnach = zeros(1, rozmiar_A);

for  i =  1 : 1 : rozmiar_A 
    for j = 1 : 1 : rozmiar_A
        sumy_w_kolumnach(i) = sumy_w_kolumnach(i) + abs(B ( j , i) );
    end
end