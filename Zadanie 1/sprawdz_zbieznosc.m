% Srawdzenia warunku zbie�no�ci, je�li jest zbiezny to zbieznosc = 1
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
% Je�li nie to sprawdzamy czy silnie diagonalnie dominujaca kolumnowo

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
if zbieznosc == 0 % Je�li �aden z warunk�w zbie�no�ci jest niespe�niony to zamieniamy wiersze
    gdzie_nie_zbiezne_kolumny;  % Najpierw pr�bujemy tak aby by�a silnie diagonalnie dominujaca kolumnowo
    Zamien_wiersze_zbieznosc_kolumny;
    if zbieznosc == 0 % Je�li przestawienie wierszy nie pomog�o to pr�bujemy przestawi� kolumny
        zmiana_kolejnosci_zmiennych = 0; % czy kolejnosc zmiennych zosta�a zmieniona
        Zamien_kolumny_zbieznosc_kolumny;
    end
end
if zbieznosc == 0 % Je�li operacja ta nie pomog�a to zmieniamy tak aby by�a silnie diagonalnie dominujaca
    gdzie_nie_zbiezne_wiersze;
    Zamien_wiersze_zbieznosc_wiersze;
    if zbieznosc == 0 % Je�li zamiana wierszy nie pomog�a to zamieniamy kolumny
        zmiana_kolejnosci_zmiennych = 0; % czy kolejnosc zmiennych zosta�a zmieniona
        Zamien_kolumny_zbieznosc_wiersze;
    end
end

