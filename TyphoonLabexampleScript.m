clear all;  close all;
%%%Read in Violent Typhoon Best Track Data for 2010-2014
Megi=xlsread('TyphoonLabData.xlsx','4');
Songda=xlsread('TyphoonLabData.xlsx','5'); 
Sanba=xlsread('TyphoonLabData.xlsx','6');
Jelawat=xlsread('TyphoonLabData.xlsx','7'); 
Utor=xlsread('TyphoonLabData.xlsx','8');  
Usagi=xlsread('TyphoonLabData.xlsx','9'); 
Francisco=xlsread('TyphoonLabData.xlsx','10');
Lekima=xlsread('TyphoonLabData.xlsx','11'); 
Haiyan=xlsread('TyphoonLabData.xlsx','12');
Vongfong=xlsread('TyphoonLabData.xlsx','13'); 
Halong=xlsread('TyphoonLabData.xlsx','14');
Nuri=xlsread('TyphoonLabData.xlsx','15'); 
Hagupit=xlsread('TyphoonLabData.xlsx','16');

%%%Create 3D Plot of Best Tracks
figure;
besttrack(Megi);hold on; besttrack(Songda);hold on; 
besttrack(Sanba);hold on; besttrack(Jelawat);hold on; 
besttrack(Utor);hold on; besttrack(Usagi);hold on;  
besttrack(Francisco);hold on; besttrack(Lekima);hold on; 
besttrack(Haiyan);hold on; besttrack(Vongfong);hold on;  
besttrack(Halong);hold on; besttrack(Nuri);hold on;  
besttrack(Hagupit);hold on

xlabel('latitude'); ylabel('longitude'); zlabel('windspeed'); 
colorbar('Location', 'SouthOutside');