FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org --trusted-host pypi.python.org
COPY . /code/