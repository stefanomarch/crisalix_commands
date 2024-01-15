# crisalix_commands

bash script to write useful commands for Crisalix enviroment, you can run servers for Crisalix Microservices from any
folder in your terminal

### 1. How to use it

- clone the repo

```bash
git clone https://github.com/stefanomarch/crisalix_commands.git
```

- go to the folder

```bash
cd crisalix_commands
```

- make it executable

```bash
chmod +x crisalix_commands.sh
```

modify the path in the file "crisalix_commands.sh" with your path
, by default is set to:

```bash
BASE_DIR="$HOME/Work/crisalix" #Change this path with your Crisalix path
```

- change the path with your Crisalix path

source the file in your ~/.bashrc or ~/.zshrc

```bash
echo "source $HOME/crisalix_commands/crisalix_commands.sh" >> ~/.zshrc
```

source your ~/.bashrc or ~/.zshrc

```bash
source ~/.zshrc
```

### 2. How to use it
- from any folder you can run the following commands:

```bash
my_start # start my server
sso_start # start sso server
estetix_start # start estetix server
admin_start # start admin server
galderma_start # start galderma server
```

### Updating the repo
If you want to add any other command, you can do it in the file "crisalix_commands.sh" and then run the following commands:

```bash
source ~/.zshrc # or source ~/.bashrc
```
