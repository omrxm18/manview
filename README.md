# manview
A utility to view man pages in a colorized and more eye-friendly way

## usage

```bash
usage: manview <page> [section]
       manview flags <query>      (search flags across every installed page)
       manview rebuild-index      (force a fresh flag index)
```

## installation
1. Download the package provided in [Release](https://github.com/omrxm18/manview/releases) for your specific arch (available: x86_64 and arm64)

2. copy the downloaded binary to "/home/yourusername/.local/bin"

3. open .bashrc (or .zshrc depending on shell), add this line 
```bash
export PATH="$HOME/.local/bin:$PATH"
```
4. or use this command directly
```
curl -sSL https://raw.githubusercontent.com/omrxm18/manview/setup.sh | bash -s latest
```
or pull from a specific tag

```
curl -sSL https://raw.githubusercontent.com/omrxm18/manview/setup.sh | bash -s v0.1.0
```

<br/>
Note: this crate was tested on the mandoc package, if you want the least problems, please use this package instead of man-db