FROM fukamachi/sbcl:2.1.9-ubuntu

RUN apt-get update && apt-get install -y make bzip2 wget

RUN cd /tmp && \
    wget https://beta.quicklisp.org/quicklisp.lisp && \
    sbcl --load quicklisp.lisp --quit --eval '(quicklisp-quickstart:install)'
COPY sbclrc /root/.sbclrc
