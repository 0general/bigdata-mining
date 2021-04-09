clear; clc;
load('APM.mat')
%bar(allPM_Year,allPM_PM,'y')
len = length(allPM_Year);
am = zeros(len,len);

for i = 1 : len
    for j = 1 : i
        am(i,j)=allPM_PM(j);
    end
end

bar(allPM_Year,am,'stacked')
title("연도별 전년 대비 매출액 증감 비율")
xlabel("Year")
ylabel("매출액 증감%")
grid on