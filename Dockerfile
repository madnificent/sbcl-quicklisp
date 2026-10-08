FROM fukamachi/sbcl:2.6.7-ubuntu

RUN apt-get update && apt-get install -y make bzip2 wget

COPY sbclrc /root/.sbclrc

RUN cd /tmp && \
    wget https://beta.quicklisp.org/quicklisp.lisp && \
    sbcl --load quicklisp.lisp --quit --eval '(quicklisp-quickstart:install)'
