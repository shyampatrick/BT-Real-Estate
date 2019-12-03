FROM python
RUN mkdir /btre_workspace
WORKDIR /btre_workspace
ADD . /btre_workspace
RUN pip install -r requirements_prod.txt
EXPOSE 8000
