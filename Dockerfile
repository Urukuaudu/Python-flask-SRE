FROM python:3.9-alpine
WORKDIR /app
COPY . .
COPY requirements.txt requirements.txt
COPY main.py main.py
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python main.py
