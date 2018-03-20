function track = besttrack(storm)
k=20; %%plot k=20 best track points for each storm
c=storm(1:k,1); %color points by time(in hrs from Genesis Point t=0).
COLOR=c;
caxis auto
track=scatter3(storm(1:k,2),storm(1:k,3),storm(1:k,5),40,COLOR,'filled');