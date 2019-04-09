% Tworzy tablice z suma kolumn i tab z informacja gdzie potrzebna zamiana i
% ilosc do z³ych wierszy
sumy_w_wierszach = zeros( rozmiar_A, 1); % tablica z sumami w wierszach
ile_zlych = 0; % ile znaleziono z³ych wierszy
for  j =  1 : 1 : rozmiar_A 
    for i = 1 : 1 : rozmiar_A
        sumy_w_wierszach(i) = sumy_w_wierszach(i) + abs(A ( i , j) );
    end
     if abs( A(j, j) ) <= sumy_w_wierszach(i) - abs( A( j , j ) )
         ile_zlych = ile_zlych + 1; 
         indeksy_zlych( ile_zlych ) = j ;
     end
end