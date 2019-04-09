% Tworzy tablice z suma kolumn i tab z informacja gdzie potrzebna zamiana i
% ilosc do z³ych kolumn
sumy_w_kolumnach = zeros(1, rozmiar_A);
ile_zlych = 0;

for  i =  1 : 1 : rozmiar_A 
    for j = 1 : 1 : rozmiar_A
        sumy_w_kolumnach(i) = sumy_w_kolumnach(i) + abs(A ( j , i) );
    end
     if abs( A(i , i) ) <= sumy_w_kolumnach(i) - abs( A( i , i ) )
         ile_zlych = ile_zlych + 1; 
         indeksy_zlych( ile_zlych ) = i ;
     end
end