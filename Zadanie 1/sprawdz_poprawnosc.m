% Skrypt sprawdza poprawnosc wprowadzonej macierzy A oraz wektora b
rozmiar_b = size(b);  % rozmiar wektora b
rozmiar_A = size(A);  % rozmair macierzy A
poprawnosc = 1 ;
if rozmiar_A(1,1) ~= rozmiar_b(1,1) || rozmiar_b(1,2)>1 || rozmiar_A(1 ,1) ~= rozmiar_A(1,2) % sprawdzenie poprawno�ci A i b
    disp('B�ednie podane macierze')
    poprawnosc = 0;
    return
end
if det(A) == 0  % Je�li wyznacznik A  = 0 to nie mo�na rozwi�ca� uk��du r�wna�
    disp('Macierz A jest osobliwa. Nie mo�na rozwi�za� uk�adu r�wna�');
    return;
end
rozmiar_A(:, 2) = []; % macierz jest kwadratowa wi�c dla u�atwienia  