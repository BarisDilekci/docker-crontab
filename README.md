# docker-cron

1. Get Docker build:

    ```bash
    docker build -t cron-i 
    ```

2. Run Docker:

    ```bash
    docker run --name cron-c -v ./cron.log:/var/log/cron.log cron-i
    ```

