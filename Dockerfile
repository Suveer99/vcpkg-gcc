FROM gcc

RUN apt-get update && apt-get install unzip && cd opt && \
    git clone https://github.com/Microsoft/vcpkg.git && \
    cd vcpkg && ./bootstrap-vcpkg.sh

ENV PATH="/opt/vcpkg:${PATH}"

CMD ['/bin/bash']