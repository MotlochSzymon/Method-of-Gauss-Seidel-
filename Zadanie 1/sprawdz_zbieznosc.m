% Srawdzenia warunku zbie¿noœci, jeœli jest zbiezny to zbieznosc = 1
zbieznosc = 1 ;
% Sprawdzamy czy silnie diagonalnie dominujaca
for i = 1 : 1 : rozmiar_A
    suma_wiersza = 0;
    for j = 1 : 1 : rozmiar_A
        suma_wiersza = suma_wiersza + abs( A ( i , j) );
    end
    if abs( A(i,i) ) <= suma_wiersza - abs( A(i,i) )
        zbieznosc = 0;
        break
    end
end
% Jeœli nie to sprawdzamy czy silnie diagonalnie dominujaca kolumnowo

if  zbieznosc == 0
    zbieznosc = 1;
    for i = 1 : 1 : rozmiar_A
        suma_kolumny = 0;
        for j = 1 : 1 : rozmiar_A
            suma_kolumny = suma_kolumny + abs( A ( j , i) );
        end
        if abs( A(i,i) ) <= suma_kolumny - abs( A(i,i) )
            zbieznosc =0;
            break
        end
    end
end
if zbieznosc == 0 % Jeœli ¿aden z warunków zbie¿noœci jest niespe³niony to zamieniamy wiersze
    gdzie_nie_zbiezne_kolumny;  % Najpierw próbujemy tak aby by³a silnie diagonalnie dominujaca kolumnowo
    Zamien_wiersze_zbieznosc_kolumny;
    if zbieznosc == 0 % Jeœli przestawienie wierszy nie pomog³o to próbujemy przestawiæ kolumny
        zmiana_kolejnosci_zmiennych = 0; % czy kolejnosc zmiennych zosta³a zmieniona
        Zamien_kolumny_zbieznosc_kolumny;
    end
end
if zbieznosc == 0 % Jeœli operacja ta nie pomog³a to zmieniamy tak aby by³a silnie diagonalnie dominujaca
    gdzie_nie_zbiezne_wiersze;
    Zamien_wiersze_zbieznosc_wiersze;
    if zbieznosc == 0 % Jeœli zamiana wierszy nie pomog³a to zamieniamy kolumny
        zmiana_kolejnosci_zmiennych = 0; % czy kolejnosc zmiennych zosta³a zmieniona
        Zamien_kolumny_zbieznosc_wiersze;
    end
end

