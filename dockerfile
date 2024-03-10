FROM python:3.8
WORKDIR /app
COPY requirements.txt .
RUN pip install  -r requirements.txt
COPY . .
RUN pytest 
EXPOSE 3002

CMD ["python", "app.py"]
