FROM python:3.8-buster
WORKDIR /app
RUN mkdir /app/res
ENV token=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
RUN git clone -b feature/hpc https://$token@github.com/seegenelab/multitom-prod.git
WORKDIR /app/multitom-prod/
RUN sed -i "s/{{TOKEN}}/$token/g" requirements.txt
RUN pip3 install -r requirements.txt
WORKDIR /app/multitom-prod/src
