% Skrypt szuka w której kolumnie z wybranych jest najwiêcej zer       
for  i = 2 : 1 : ile_zer_A +1 
           if zera (2 , i ) > zera_kolumna
               najwiecej_zer = i ;  % nowy indeks gdzie jest najwiecej zer
               zera_kolumna =  zera(2, i); % nowa ilosc najwiêkszej iloœci zer
           end
           
       end