library(magick)

cdc_img <- image_read_pdf("D:/학교/빅데이터 입문/도서정가제 data/출판 산업 통합 실태(2013~2019)/2019 출판산업 실태조사_보고서-페이지/page-124.pdf",
                          density = 300, pages = 1)

cdc_draw_img <- cdc_img %>% 
  image_scale("350")

image_draw(cdc_draw_img)

rect(30, 80, 320, 350, border = "red", lty = "dashed", lwd = 2)
# dev.off()

library(tabulizer)
library(tidyverse)

cdc_table <- extract_tables("D:/학교/빅데이터 입문/도서정가제 data/출판 산업 통합 실태(2013~2019)/2019 출판산업 실태조사_보고서-페이지/page-124.pdf", encoding = "UTF-8")

write.csv(cdc_table,"D:/학교/빅데이터 입문/도서정가제 data/출판 산업 통합 실태(2013~2019)/매출 증대를 위한 증정 추진 사항 2순위.csv")

