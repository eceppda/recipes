FROM debian:testing-slim

RUN apt-get -qq update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    sqitch \
    libdbd-pg-perl \
    postgresql-client \
    libdbd-sqlite3-perl \
    tzdata \
    sqlite3 && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -r sqitch --gid=1024 && \
    useradd -r -g sqitch --uid=1024 -d /home sqitch && \
    chown -R sqitch:sqitch /home

USER sqitch

WORKDIR /repo

CMD ["sh", "-c", "sqitch"]