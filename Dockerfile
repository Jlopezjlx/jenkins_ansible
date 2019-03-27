from jenkins/jenkins 

USER root 

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip install ansible
    
RUN apt-get update -y \
&& apt-get -y install sshpass

USER jenkins

