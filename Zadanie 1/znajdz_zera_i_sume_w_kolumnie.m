% Skrypt szuka zer na przekatnej, zapisuje ich indeksy oraz liczbe zer w
% tych kolumnach
% zera =  zeros( 2, rozmiar_A(1,1) ); % Przechowuje indeksy w 1 wierszu tego gdzie sa zera a 2 wierszu ile ich jest
ile_zer_A = 0;
for i =1 : 1 : rozmiar_A % wektor do pami�tania kt�rego wiersza nie mo�na ruszy�, 0 - niezabronione, 1 - zabronione
    zabronione(i) = 0;
end
for i = 1 : 1 : rozmiar_A    % Sprawdzamy czy na przek�tnej macierzy A wyst�puje warto�� 0
    if A(i , i) == 0  % Je�li znaleziono zero to zapisujemy gdzie jest i ile jest w ich w kolumnie
      zera(1 , ile_zer + 1 ) = i;
      suma = 0;
      for j = 1 : 1 : rozmiar_A
        if A( j , i)  == 0
            suma = suma + 1;
        end         
      end
      zera(2 , ile_zer + 1 ) = suma;
      ile_zer_A = ile_zer_A + 1; % zwiekszamy ilo�� przechowywanych danych o 1
    end
end