##Name the file as a Dockerfile
##when you build the dockerfile you should use other name
FROM ubuntu:18.04
#FROM python:2.7

RUN apt-get update && apt-get install -y python-pip
RUN apt-get install -y r-base
#RUN pip install panda
#RUN pip install msgpack

ADD prepare_flood_events_table.py make_dly_obs_table_standalone.py by_event_for_model.py test.sh /

####those scripts with data and test.sh contains bash file with input data files#

RUN chmod +x ./test.sh
CMD ["./test.sh"]

##usage docker build -t python_dockerfile .
### !!!!!!ATTENTION dot is important!!!!!! 
##docker run python-dockerfile
