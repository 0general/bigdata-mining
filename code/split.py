import os
from PyPDF2 import PdfFileReader, PdfFileWriter

path = r'D:\학교\빅데이터 입문\도서정가제 data\분할용 pdf'
s_path = r'D:\학교\빅데이터 입문\도서정가제 data\분할 페이지'

for item in os.listdir(path):
    item_path = os.path.join(path, item)
    pdf = PdfFileReader(open(item_path, 'rb'))

    # pdf페이지수
    numberPages = pdf.getNumPages()

    for page in range(1, numberPages):
        pdf_writer = PdfFileWriter()
        pdf_writer.addPage(pdf.getPage(page))
        output_name = 'page{num}_{name}'.format(num=page, name=item)
        save_path = os.path.join(s_path, output_name)

        with open(save_path, 'wb') as f:
            pdf_writer.write(f)
print('분할하였습니다.')
