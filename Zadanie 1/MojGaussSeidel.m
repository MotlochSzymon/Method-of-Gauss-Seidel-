%% Skrypt rozwi�zuj�cy uk�ad r�wna� metod� iteracyjn� Gaussa-Seidela
%% o postaci Ax=b, nale�y poda� macierz A , wektor b oraz �adan� dok�adno�� e

%A = [ -2 1 5 ; 4 -8 1 ; 4 -1 1];
%b = [15; -21 ; 7];
%e = 10^(-10);

sprawdz_poprawnosc;
if poprawnosc == 1
    
    znajdz_zera_i_sume_w_kolumnie;
    if ile_zer_A > 0  % Je�li znaleziono zera na przek�tnej to trzeba zamienic te wiersze
        zamien_wiersze;
    end
    sprawdz_zbieznosc;
    if zbieznosc == 1
        
        D = zeros(rozmiar_A ,rozmiar_A);   % macierz diagonalna
        for i = 1 : 1: rozmiar_A
            D( i , i) = A ( i , i);
        end
        
        L = zeros(rozmiar_A ,rozmiar_A);  % macierz poddiagonalna
        for i = 2 : 1: rozmiar_A
            for j = 1 : 1 : i - 1
                L( i , j) = A ( i , j);
            end
        end
        
        U = zeros(rozmiar_A ,rozmiar_A); % macierz naddiagonalna
        for i = 1 : 1: rozmiar_A - 1
            for j = i + 1 : 1 : rozmiar_A
                U( i , j) = A ( i , j);
            end
        end
        
        x_wczesniejsze =  zeros(rozmiar_A ,1); % Przyjmujemy narazie, �e rozwi�zanie to wektor zerowy
        x_kolejne = zeros(rozmiar_A ,1);
        x_poczatkowe =  zeros(rozmiar_A ,1);
        numer_iteracji = 1;
        maksymalna_ilosc_iteracji = 100;
        e1_dop = e;
        e2_dop = e;
        e1 = 10 * e ;
        e2 = 10 * e;
        while  (numer_iteracji <= maksymalna_ilosc_iteracji) && (e1(numer_iteracji) > e1_dop) && (e2(numer_iteracji)  > e2_dop)
            numer_iteracji = numer_iteracji + 1;
            x_wczesniejsze = x_kolejne ;
            x_kolejne = - (D+L) ^(-1) * U * x_wczesniejsze + ( D + L ) ^ (-1) * b;
            e1( numer_iteracji) = ( norm  (x_kolejne - x_wczesniejsze ) )/( norm  (x_kolejne)  );
            e2 (numer_iteracji) = ( norm (A * x_kolejne - b) )  / ( norm ( A * x_poczatkowe - b )  );
        end
        
        disp('Rozwi�zanie zako�czono po');
        numer_iteracji
        disp(' Wynik: ')
        if zmiana_kolejnosci_zmiennych == 1
            for i = 1 : 1 : rozmiar_A
                if i ~= kolejnosc_zmiennych(i) % jest zamieniona kolejnosc na tej pozycji
                    x_porzadek(i) =  x_kolejne( kolejnosc_zmiennych(i) ) ;
                else % na swojej pozycji
                    x_porzadek(i) =   x_kolejne(i);
                end
            end
            x_porzadek
        else % nie by�a zmieniana kolejno�� kolumn
            x_kolejne
        end
        disp(' e1 = ')
        disp(e1 (  numer_iteracji ))
        disp(' e2 = ')
        disp(e2 (  numer_iteracji ))
    else
        disp('Warunki zbie�no��i nie zosta�y spe�nione');
    end
end