# resin-openssh-passwordless
SSH into a resin.io container using public-key auth

## Installation

1. Clone repo locally:
    ```
    $ git clone https://github.com/konradko/resin-openssh-passwordless
    ```

2. Add resin.io remote:
    ```
    $ git remote add resin username@git.resin.io:username/project.git
    ```

3. Set the `CLIENT_PUBKEY` environment variable to your public key in resin.io dashboard, on OSX you can copy it with:
    ```
    $ cat ~/.ssh/id_rsa.pub | pbcopy
    ```

4. Deploy the application:
    ```
    $ make deploy
    ```

## Usage

SSH into a container (you can get the device local IP address via resin.io dashboard or using [resin-cli](https://github.com/resin-io/resin-cli)), e.g.:
    
    $ ./ssh.sh 192.168.1.15

