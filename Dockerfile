FROM ubuntu:18.04

WORKDIR /home/ubuntu/sample/

#COPY /home/ec2-user/playground/testDOS.py ./

RUN apt-get update && \
    apt-get install python -y && \
    apt-get install git -y && \
    apt-get install -y --no-install-recommends && \
    git clone https://github.com/vikkysri77/testsiteDOS


CMD ["python","./testsiteDOS/testDOS.py"]
