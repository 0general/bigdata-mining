clear; clc;
load('WNP.mat')
explode = [1 0 0 1 1];
labels = {'매우 높음','높음','보통','낮음','매우 낮음'};
subplot(2,2,1)
pie(WNP_2016,explode,labels)
subplot(2,2,2)
pie(WNP_2017,explode,labels)
subplot(2,2,3)
pie(WNP_2018,explode,labels)
subplot(2,2,4)
pie(WNP_2019,explode,labels)