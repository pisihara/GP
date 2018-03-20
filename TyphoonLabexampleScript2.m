clear all, close all  
format long
%%%%   I.  READ GP DATA OF STORMS TO BE PREDICTED  
GP=xlsread('TyphoonLabData.xlsx','GP');
%%%VongfongGP=GP(1,:) HalongGP=GP(2,:) NuriGP=GP(3,:) HagupitGP=GP(4,:)      

%% READ MVP DATA OF STORMS TO BE SIMULATED
DUIR=xlsread('TyphoonLabData.xlsx','DUIR');

%%%  COMPUTATION OF MULTIPLE REGRESSION COEFICIENTS 
 X = [ones(size(DUIR(:,1))) DUIR(:,1) DUIR(:,2)   DUIR(:,3)  ];
 lat = X\DUIR(:,4);
 lon = X\DUIR(:,5);
%%% COMPUTE PREDICTED MVP      
 for i=1:4
 PREDMVP(i,1)=lat(1,1)+lat(2,1)*GP(i,1)+lat(3,1)*GP(i,2)+lat(4,1)*GP(i,3);
 PREDMVP(i,2)=lon(1,1)+lon(2,1)*GP(i,1)+lon(3,1)*GP(i,2)+lon(4,1)*GP(i,3);
 end
 xlswrite('TyphoonLabData.xlsx', PREDMVP, 'PredictedMVP');   