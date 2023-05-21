# antl4-go-template
Simple template for GoLang - using ANTL4 v4.9.3 with included go-runtime

<b>Quick Start</b>:

After clone, run 
```bash
./modInit.sh
```

<b>Profi Start</b>:

cd 'parsing' direcory, then remore JSON.g4, create work .g4 file(s), and generate code:
```bash
cd ..
./modInit.sh
```

For Re-Generate ANTL4 go files, run this with root project directory:
```bash
go generate ./...
```
