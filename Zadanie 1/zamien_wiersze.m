      
% Skrypt na podstawie tablicy z zapisanymi indeksami po�o�enia zer oraz ich
% ilo�ci w danych kolumnach znajduje kolumne z najwi�ksz� ilo�ci� zer i
% zamienia wiersze tak aby kom�rka z najwi�kszym modu�em znalaz�a si� na
% przek�tnej. Powtarza takie dzia�anie dop�ki� s� jeszcze zera na
% przek�tnej

  
     ile_powtorzen = ile_zer_A ;
       
      for int i = 1 : 1 :  ile_powtorzen % trzeba zaminiec tyle wierszy ile znaleziono zer
  % zaczynamy od znlezenia z wybranych kolumn tej gdzie jest najwiecej zer
  
      najwiecej_zer = 1; % Narazie przyjmujemy, �e w ideksie zapisanym w 1 kom�rce jest najwiecej 0 
      zera_kolumna =  zera(2, 1); % ile jest zer w kolumnie w kt�rej jest jej nawi�cej
      if ile_zer_A > 1 % Je�li mamy jedno zero to jest ono pod 1 indeksem, je�li nie to szukamy
       znajdz_kolumne;   
 
      end
      numer_kolumny = zera( 1, najwiecej_zer) ; % nr rozpatrywanej kolumny
      wartosc_najwiekszego = 0;
      numer_wiersza_najwiekszego = 0;
      znajdz_najwiekszy_elemnt;
      zabronione ( numer_wiersza_najwiekszego ) = 1; % dodajemy ten wiersz do zabronionych
      A( [ numer_wiersza_najwiekszego numer_kolumny ], : ) = A( [ numer_kolumny numer_wiersza_najwiekszego] , : ); % zamiana wierszy
         aktualizuj_tablice;
       b([ numer_wiersza_najwiekszego numer_kolumny ], : ) = b ( [ numer_kolumny numer_wiersza_najwiekszego] , : ); % zamiana wektora b
       end