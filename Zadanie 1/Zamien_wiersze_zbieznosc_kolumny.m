% Próbuje zamienic wiersze tak by A by³a silnie diagonalna dominuj¹ca
najlepsza_ilosc_zlych_kolumna = ile_zlych; % Bêdzie przechowywaæ iloœæ z³ych kolumn macierzy testowej
najlepsze_rozwiazanie = A; % Przechowuje najlepsze znalezione rozwi¹zanie
ilosc_zlych_najlepszego =  ile_zlych; %  Bêdzie przechowywaæ iloœæ z³ych kolumn najlepszej znalezionej macierzy
B = A; % kopia do operacji na niej
b_najlepsze = b; % zamiana wierszy zmieni nam te¿ wektor b
for i = 1 : 1 : ile_zlych % wszystkie z³e kolumny
    for j = 1 : 1 : rozmiar_A % po kolumnie szukamy elementu nadaj¹cego sie
        if abs( B( j , indeksy_zlych(i ) ) ) > sumy_w_kolumnach(indeksy_zlych(i ) ) % zamiana tego elementu rozwi¹zuje problem w tej kolumnie
            % Tworzymy testowa macierz i rozpatrujemy rozwiazanie ze zmiana
            % wierszy
            Testowa_macierz = B;
            Testowa_macierz( [ indeksy_zlych(i ) j ] , :) = Testowa_macierz([ j indeksy_zlych(i )], :); % Zamienamy wiersz diagonalny ze znalezionym
            % Sprawdzamy ile w tym rozwiazaniu mamy zlych kolumn
            nowa_ilosc_zlych = 0;
            for k = 1 : 1 : rozmiar_A
                if abs(  Testowa_macierz(k,k) ) <= sumy_w_kolumnach(k)  - abs(  Testowa_macierz(k,k) )
                    nowa_ilosc_zlych = nowa_ilosc_zlych + 1;
                end
            end
            if nowa_ilosc_zlych < ilosc_zlych_najlepszego % Jeœli to rozwiazanie jest lepsze
                najlepsze_rozwiazanie =  Testowa_macierz; % To zapisujemy to rozwiazanie
                b_schowek = b_najlepsze( indeksy_zlych(i ) ) ; % Trzeba zaktualizowaæ wektor b
                b_najlepsze( indeksy_zlych(i ) ) = b_najlepsze(j);
                b_najlepsze(j) = b_schowek;
                ilosc_zlych_najlepszego = nowa_ilosc_zlych;
                if ilosc_zlych_najlepszego == 0  % Jeœli mamy kompletne rozwi¹zanie to wychodzimy
                    break;
                end
            end
        end
    end
    B = najlepsze_rozwiazanie; % przeszliœmy ca³a kolumne i zapisujemy najlepsze rozwiazanie w niej
    Nowa_suma_kolumn;
    if ilosc_zlych_najlepszego == 0 % Jeœli ju¿ jest ok to wychodzimy
        A = B ; % MAmy dobre rozwi¹zanie wiêc aktualizujemy macierz A do tej postaci
        b = b_najlepsze;
        zbieznosc = 1;
        break;
    end
    zbieznosc = 0;
end





