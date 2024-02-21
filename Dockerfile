FROM ubuntu:21.04

RUN apt update && apt install \
    --no-install-recommends \
    --quiet \
    --assume-yes \
    samtools=1.19.2 \
    rna-star=2.7.11b+dfsg-2 \
    python3-htseq=2.0.5

RUN mkdir -p /pipeline/output/
RUN mkdir -p /pipeline/genome_index/
WORKDIR /pipeline/

