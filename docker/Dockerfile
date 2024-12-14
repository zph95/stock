# Use Miniconda as the base image
FROM continuumio/miniconda3:latest

MAINTAINER zph

# Set renvironment variables
ENV LANG=zh_CN.UTF-8
ENV LC_CTYPE=zh_CN.UTF-8
ENV LC_ALL=C
ENV PYTHONPATH=/data/InStock
EXPOSE 9988
EXPOSE 8888

# Set timezone and update system
RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apt-get update && \
    apt-get install -y cron gcc make default-libmysqlclient-dev build-essential supervisor pkg-config curl wget && \
    apt-get clean && apt-get autoclean && apt-get autoremove -y

# Create a conda environment and install Python dependencies
RUN conda create -n instock python=3.11 -y && \
    conda init bash && \
    echo "conda activate instock" >> ~/.bashrc && \
    /bin/bash -c "source ~/.bashrc && conda activate instock && \
    conda install -c conda-forge ta-lib && \
    pip install mysqlclient requests arrow numpy SQLAlchemy PyMySQL Logbook python_dateutil py_mini_racer tqdm beautifulsoup4 bokeh pandas tornado mini-racer easytrader notebook"


# Set working directory
WORKDIR /data

# Copy application files
COPY stock /data/InStock
COPY cron/cron.hourly /etc/cron.hourly
COPY cron/cron.workdayly /etc/cron.workdayly
COPY cron/cron.monthly /etc/cron.monthly

# Add cron service and set permissions
RUN chmod 755 /data/InStock/instock/bin/run_*.sh && \
    chmod 755 /etc/cron.hourly/* && chmod 755 /etc/cron.workdayly/* && chmod 755 /etc/cron.monthly/* && \
    echo "SHELL=/bin/bash \n\
# min hour day month weekday command \n\
*/30 9,10,11,13,14,15 * * 1-5 /bin/run-parts /etc/cron.hourly \n\
30 17 * * 1-5 /bin/run-parts /etc/cron.workdayly \n\
30 10 * * 3,6 /bin/run-parts /etc/cron.monthly \n" > /var/spool/cron/crontabs/root && \
    chmod 600 /var/spool/cron/crontabs/root

# Set entrypoint
ENTRYPOINT ["supervisord","-n","-c","/data/InStock/supervisor/supervisord.conf"]