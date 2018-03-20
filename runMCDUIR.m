%%  THIS PROGRAM CREATES A MONTEXCARLO DATA SET
%% STRUCTURED BY SPECIFICATION OF THE NUMBER OF MVP FOR EACH GP IN THE
%% DUIR AND BY SPECIFYING THE GP AND MVP POSITION WINDOWS FOR THE DUIR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CALLING THE FUNCTION MCDUIR RESULTS IN A
%% MONTE CARLO DUIR WRITTEN TO AN EXCEL FILE MCDUIR.xlsx
%% (ONLY THE LAT AND LON OF THE MVP CAN BE PREDICTED FROM THIS DUIR) 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all;
%%ndata(i,1)=#MVP of storm i
ndata(1,1)=6;ndata(2,1)=3;ndata(3,1)=2;
ndata(4,1)=2;ndata(5,1)=4;ndata(6,1)=3;
ndata(7,1)=8;
%%enter minlon,maxlon,minlat,maxlat for GP (row1) and MVP (row2) for 
%%the storms above
pdata(1,1)=6.7;pdata(1,2)=14.3;pdata(1,3)=134.7;pdata(1,4)=160.4;
pdata(2,1)=13.6;pdata(2,2)=19.2;pdata(2,3)=123.3;pdata(2,4)=145.0;
pdata(3,1)=1002;pdata(3,2)=1010;
%% call a function to create a DUIR 
%% Row consists of GPlat, GPlon, GPpres, MVPlat, MVPlon
MCDUIR(ndata,pdata)







