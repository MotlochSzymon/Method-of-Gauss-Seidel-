% Skrypt szuka w kt�rej kolumnie z wybranych jest najwi�cej zer       
for  i = 2 : 1 : ile_zer_A +1 
           if zera (2 , i ) > zera_kolumna
               najwiecej_zer = i ;  % nowy indeks gdzie jest najwiecej zer
               zera_kolumna =  zera(2, i); % nowa ilosc najwi�kszej ilo�ci zer
           end
           
       end