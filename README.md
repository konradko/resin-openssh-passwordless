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

3. In resin.io dashboard set `CLIENT_PUBKEYS` environment variable to '\n' separated list of public keys, on OSX you can copy your public key with:
    ```
    $ cat ~/.ssh/id_rsa.pub | pbcopy
    ```
    | Environment variable | Example value | Description
    | ------------- | ------------- | ------------- |
    | CLIENT_PUBKEYS | ssh-rsa pubkeyone\nssh-rsa pubkeytwo | '\n' separated list of public keys that are allowed access |


4. Deploy the application:
    ```
    $ make deploy
    ```

## Usage

SSH into a container (you can get the device local IP address via resin.io dashboard or using [resin-cli](https://github.com/resin-io/resin-cli)), e.g.:
    
    $ ./ssh.sh 192.168.1.15

