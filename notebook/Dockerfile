FROM  jupyter/base-notebook 

# Use local cached debs from host (saves your bandwidth!)
# Change ip below to that of your apt-cacher-ng host
# Or comment this line out if you do not with to use caching
#ADD 71-apt-cacher-ng /etc/apt/apt.conf.d/71-apt-cacher-ng

#RUN apt-get update 
RUN mkdir -p  /home/jovyan/notebook
ADD requirements.txt /
WORKDIR /
RUN pip install pip --upgrade &&  pip install -r requirements.txt
WORKDIR /home/jovyan/notebook
