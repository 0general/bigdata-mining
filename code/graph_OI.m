clear; clc;
load('OI.mat')
subplot(2,1,1)
plot(OI_Year,OI_num,'-o','linewidth',2)
title("영업이익률")
xlabel("Year")
ylabel("영업이익률 %")
grid on
legend({'전체 평균'},'Location','northeast')
subplot(2,1,2)
plot(OI_Year,OI_1,'-s')
hold on
plot(OI_Year,OI_8,':x')
hold on
plot(OI_Year,OI_11,':*')
grid on
title("세부 영업이익률")
xlabel("Year")
ylabel("영업이익률 %")
legend({'장르-일반단행본','판매규모-1억원 미만','판매규모-100억원 이상'},'Location','southeast')