 % Skrypt zmniejsza rozmiar tablicy o 1 i porz¹dluje ja 
          if  numer_wiersza_najwiekszego == ile_zer_A     % jeœli ostani element w tablicy to zmiejszamy tylko wielko tablicy o 1     
              ile_zer_A = ile_zer_A - 1 ;
          end
          else 
          for k =  najwiecej_zer : 1 : ile_zer_A - 1
              zera (1 , k ) = zera (1 , k + 1) ;
              zera (2 , k ) = zera (2 , k + 1) ;
          end
          ile_zer_A  =  ile_zer_A -1 % Zmniejszamy rozmiar tablic o 1