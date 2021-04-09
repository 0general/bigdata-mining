clear; clc;
load('WPM.mat')
len = length(WPM_Year);
ym = zeros(len,len);
bg = [WPM_2018;WPM_2019];

bar(WPM_Year,bg)
title("전자책 매출액 증감")
xlabel("Year")
ylabel("매출액 증감%")
legend({'매출액 증감','매출액 변화없음'},'Location','northwest')
grid on