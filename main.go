package main

import (
	caddycmd "github.com/caddyserver/caddy/v2/cmd"

	// plug in Caddy modules here
	_ "github.com/caddy-dns/cloudflare"
	// https://github.com/libdns/directadmin/issues/7
	// _ "github.com/caddy-dns/directadmin"
	_ "github.com/caddy-dns/rfc2136"
	_ "github.com/caddyserver/caddy/v2/modules/standard"
)

func main() {
	caddycmd.Main()
}
