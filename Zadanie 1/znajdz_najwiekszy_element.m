% Skrypt szuka najwiekszego elemntu wybranej kolumny kt�ry mo�na zamieni�     
for i = 1 : 1 : rozmiar_A 
          if abs( A( i , numer_kolumny) ) > wartosc_najwiekszego && zabronione( i ) = 0 % Jak znajdziemy wiekszy w kolumnie i dozwolony
              numer_wiersza_najwiekszego = i;
              wartosc_najwiekszego = abs( A( i , numer_kolumny) );
          end
      end