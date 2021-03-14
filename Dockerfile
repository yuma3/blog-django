FROM python:3
ENV PYTHONUNBUFFERED 1
WORKDIR /src
COPY requirements.txt /src/
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /src/
EXPOSE 8000




