gdzie_nie_zbiezne_wiersze;
kolejnosc_zmiennych = 1: rozmiar_A ;

for j = 1 : 1 : ile_zlych % wszystkie z�e wiersze
    for i = 1 : 1 : rozmiar_A % po wierszu szukamy elementu nadaj�cego sie
        if (2 *abs( B( indeksy_zlych(j) , i ) )) > sumy_w_wierszach(indeksy_zlych(j)) % zamiana tego elementu rozwi�zuje problem w tym wierszu
            % Tworzymy testowa macierz i rozpatrujemy rozwiazanie ze zmiana
            % kolumn
            Testowa_macierz = B;
            Testowa_macierz(:, [indeksy_zlych(j ) i ] ) = Testowa_macierz(:,[ i indeksy_zlych(j ) ]); % Zamienamy kolumne diagonaln� ze znaleziona kolumna
            % Sprawdzamy ile w tym rozwiazaniu mamy zlych wierszy
            nowa_ilosc_zlych = 0;
            for k = 1 : 1 : rozmiar_A
                if abs(  Testowa_macierz(k,k) ) <= sumy_w_wierszach(k)  - abs(  Testowa_macierz(k,k) )
                    nowa_ilosc_zlych = nowa_ilosc_zlych + 1;
                end
            end
            if nowa_ilosc_zlych < ilosc_zlych_najlepszego % Je�li to rozwiazanie jest lepsze
                najlepsze_rozwiazanie =  Testowa_macierz; % To zapisujemy to rozwiazanie
                ilosc_zlych_najlepszego = nowa_ilosc_zlych;
                zmiana_kolejnosci_zmiennych = 1; % zmieniono kolejno�� zmiennych
                kolejnosc_zmiennych(: ,[ indeksy_zlych(j ) i ] ) =  kolejnosc_zmiennych(: , [ i indeksy_zlych(j )] );     % zmiana kolejnosc zmiennych
                if ilosc_zlych_najlepszego == 0  % Je�li mamy kompletne rozwi�zanie to wychodzimy
                    break;
                end
            end
        end
    end
    B = najlepsze_rozwiazanie; % przeszli�my ca�a kolumne i zapisujemy najlepsze rozwiazanie w niej
    Nowa_suma_wiersza;
    if ilosc_zlych_najlepszego == 0 % Je�li ju� jest ok to wychodzimy
        A = B ; % MAmy dobre rozwi�zanie wi�c aktualizujemy macierz A do tej postaci
        zbieznosc = 1;
        break;
    end
    zbieznosc = 0;
end
