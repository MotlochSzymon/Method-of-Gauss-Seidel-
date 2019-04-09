      
% Skrypt na podstawie tablicy z zapisanymi indeksami po³o¿enia zer oraz ich
% iloœci w danych kolumnach znajduje kolumne z najwiêksz¹ iloœci¹ zer i
% zamienia wiersze tak aby komórka z najwiêkszym modu³em znalaz³a siê na
% przek¹tnej. Powtarza takie dzia³anie dopóki¹ s¹ jeszcze zera na
% przek¹tnej

  
     ile_powtorzen = ile_zer_A ;
       
      for int i = 1 : 1 :  ile_powtorzen % trzeba zaminiec tyle wierszy ile znaleziono zer
  % zaczynamy od znlezenia z wybranych kolumn tej gdzie jest najwiecej zer
  
      najwiecej_zer = 1; % Narazie przyjmujemy, ¿e w ideksie zapisanym w 1 komórce jest najwiecej 0 
      zera_kolumna =  zera(2, 1); % ile jest zer w kolumnie w której jest jej nawiêcej
      if ile_zer_A > 1 % Jeœli mamy jedno zero to jest ono pod 1 indeksem, jeœli nie to szukamy
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