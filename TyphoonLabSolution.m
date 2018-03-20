clear all, close all  
format long
%%%%   I.  READ GP DATA OF STORMS TO BE PREDICTED  
GP=xlsread('TyphoonLabData.xlsx','GP');
%%%UtorGP=GP(1,:) UsagiGP=GP(2,:) FranciscoGP=GP(3,:) LekimaGP=GP(4,:) HaiyanGP=GP(5,:)     

%% READ MVP DATA OF STORMS TO BE SIMULATED
DUIR=xlsread('TyphoonLabData.xlsx','DUIR');

%%%  COMPUTATION OF MULTIPLE REGRESSION COEFICIENTS 
 X = [ones(size(DUIR(:,1))) DUIR(:,1) DUIR(:,2)   DUIR(:,3)  ];
 lat = X\DUIR(:,4);
 lon = X\DUIR(:,5);
%%% COMPUTE PREDICTED MVP
PREDMVP = zeros(5,2);
 for i=1:5
 PREDMVP(i,1)=lat(1,1)+lat(2,1)*GP(i,1)+lat(3,1)*GP(i,2)+lat(4,1)*GP(i,3);
 PREDMVP(i,2)=lon(1,1)+lon(2,1)*GP(i,1)+lon(3,1)*GP(i,2)+lon(4,1)*GP(i,3);
 end
 
 
 %xlswrite('TyphoonLabData.xlsx', PREDMVP, 'PredictedMVP'); 

%calculating error
RAWSTORM1= xlsread('TyphoonLabData.xlsx','8'); %%%Utor
RAWSTORM2= xlsread('TyphoonLabData.xlsx','9'); %%%Usagi
RAWSTORM3= xlsread('TyphoonLabData.xlsx','10'); %%%Francisco
RAWSTORM4= xlsread('TyphoonLabData.xlsx','11'); %%%Lekima
RAWSTORM5= xlsread('TyphoonLabData.xlsx','12');  %%%Haiyan
    
utorMVP = RAWSTORM1(13,:);
usagiMVP = RAWSTORM2(16:19,:);
franciscoMVP = RAWSTORM3(14:19,:);
lekimaMVP = RAWSTORM4(17:22,:);
haiyanMVP = RAWSTORM5(18:19,:);


utorError = ERROR(utorMVP,PREDMVP(1,:)) 
usagiError = ERROR(usagiMVP,PREDMVP(2,:)) 
franciscoError = ERROR(franciscoMVP,PREDMVP(3,:)) 
lekimaError = ERROR(lekimaMVP,PREDMVP(4,:)) 
haiyanError = ERROR(haiyanMVP,PREDMVP(5,:)) 

 

