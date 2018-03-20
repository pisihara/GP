%% THIS FUNCTION TAKES IN DATA DESCRIBING THE DUIR
%% INCLUDING THE NUMBER OF MVP FOR EACH GP
%% AND THE POSITION WINDOWS OF THE GP'S AND MVP'S
%% OUTPUT IS AN EXCEL FILE WITH A MONTECARLO DUIR
%% HAVING THE STRUCTURE SPECIFIED ABOVE

function mcDUIR = MCDUIR(ndata,pdata) 

%%ndata(i,1)=number MVP of storm i
%pdata row 1 is GP minlat,maxlat,minlon,maxlon
%pdata row 2 is MVP minlat,maxlat,minlon,maxlon
%pdata row 3 is GP minimum pressure, GP maximum pressure

L=length(ndata);

for i=1:L
    GPlat(i,1)=pdata(1,1)+(pdata(1,2)-pdata(1,1))*rand;
    GPlon(i,1)=pdata(1,3)+(pdata(1,4)-pdata(1,3))*rand;
    GPpres(i,1)=pdata(3,1)+(pdata(3,2)-pdata(3,1))*rand;
 end
    
for i=1:L
  for j=1:ndata(i,1)
     MVPlat(i,j)=pdata(2,1)+(pdata(2,2)-pdata(2,1))*rand;
     MVPlon(i,j)=pdata(2,3)+(pdata(2,4)-pdata(2,3))*rand;
  end
end

row=1;
for i=1:L
    for j=1:ndata(i,1)
mcDUIR(row,1)=10*GPlat(i,1); 
mcDUIR(row,2)=10*GPlon(i,1);
mcDUIR(row,3)=GPpres(i,1);
mcDUIR(row,4)=10*MVPlat(i,j);
mcDUIR(row,5)=10*MVPlon(i,j);
row=row+1;
end
    
xlswrite('MCDUIR.xlsx',mcDUIR);
end
    


