NAME=caddy
BINDIR=bin
VERSION=$(shell git describe --tags || echo "unknown version")
BUILDTIME=$(shell date -u)
GOBUILD=CGO_ENABLED=0 go build -trimpath -ldflags "-s -w"

all: linux-amd64 linux-armv8

linux-amd64:
	GOARCH=amd64 GOOS=linux $(GOBUILD) -o $(BINDIR)/$(NAME)-x86_64

linux-armv8:
	GOARCH=arm64 GOOS=linux $(GOBUILD) -o $(BINDIR)/$(NAME)-aarch64

clean:
	rm $(BINDIR)/*

