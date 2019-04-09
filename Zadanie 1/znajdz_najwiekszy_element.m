% Skrypt szuka najwiekszego elemntu wybranej kolumny który mo¿na zamieniæ     
for i = 1 : 1 : rozmiar_A 
          if abs( A( i , numer_kolumny) ) > wartosc_najwiekszego && zabronione( i ) = 0 % Jak znajdziemy wiekszy w kolumnie i dozwolony
              numer_wiersza_najwiekszego = i;
              wartosc_najwiekszego = abs( A( i , numer_kolumny) );
          end
      end