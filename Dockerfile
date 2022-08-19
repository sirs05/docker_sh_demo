FROM python:3.6.8
ADD . /code
WORKDIR /code
RUN pip install --upgrade pip -i https://pypi.douban.com/simple --trusted-host pypi.douban.com
RUN pip install pymysql -i https://pypi.douban.com/simple --trusted-host pypi.douban.com
RUN pip install -r requirements.txt -i https://pypi.douban.com/simple --trusted-host pypi.douban.com

CMD ["python", "app/app.py", "--host=localhost", "--port=9101"]