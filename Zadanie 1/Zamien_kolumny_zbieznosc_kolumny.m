gdzie_nie_zbiezne_kolumny;
kolejnosc_zmiennych = 1: rozmiar_A ;

for i = 1 : 1 : ile_zlych % wszystkie z³e kolumny
    for j = 1 : 1  : rozmiar_A % szukamy po wierszu elementu nadaj¹cego siê
        if 2 * abs( B(  indeksy_zlych(i ) , j ) ) > sumy_w_kolumnach(indeksy_zlych(i ) ) % Jeœli to rozwi¹zuje problem kolumny
            % Macierz testowa i rozpatrujemy rozwiazanie ze zmiana
            % kolumn
            Testowa_macierz = B;
            Testowa_macierz(:, [ indeksy_zlych(i ) j] ) = Testowa_macierz(:,[ j  indeksy_zlych(i )] ); % Zamienamy kolumne diagonaln¹ ze znaleziona kolumna
            % Sprawdzamy ile w tym rozwiazaniu mamy zlych kolumn
            nowa_ilosc_zlych = 0;
            for k = 1 : 1 : rozmiar_A
                if abs(  Testowa_macierz(k,k) ) <= sumy_w_kolumnach(k)  - abs(  Testowa_macierz(k,k) )
                    nowa_ilosc_zlych = nowa_ilosc_zlych + 1;
                end
            end
            if nowa_ilosc_zlych < ilosc_zlych_najlepszego % Jeœli to rozwiazanie jest lepsze
                najlepsze_rozwiazanie =  Testowa_macierz; % To zapisujemy to rozwiazanie
                ilosc_zlych_najlepszego = nowa_ilosc_zlych;
                zmiana_kolejnosci_zmiennych = 1; % zmieniono kolejnoœæ zmiennych
                kolejnosc_zmiennych(: ,[ indeksy_zlych(i ) j ] ) =  kolejnosc_zmiennych(: , [ j indeksy_zlych(i )] ); % zmiana kolejnosc zmiennych
                if ilosc_zlych_najlepszego == 0  % Jeœli mamy kompletne rozwi¹zanie to wychodzimy
                    break;
                end
            end
            
        end
        
    end
    B = najlepsze_rozwiazanie; % przeszliœmy ca³a kolumne i zapisujemy najlepsze rozwiazanie w niej
    Nowa_suma_kolumn;
    if ilosc_zlych_najlepszego == 0 % Jeœli ju¿ jest ok to wychodzimy
        A = B ; % Mamy dobre rozwi¹zanie wiêc aktualizujemy macierz A do tej postaci
        zbieznosc = 1;
        break;
    end
    zbieznosc = 0;
end