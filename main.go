package main

import (
	caddycmd "github.com/caddyserver/caddy/v2/cmd"

	// plug in Caddy modules here
	_ "github.com/caddy-dns/cloudflare"
	_ "github.com/caddy-dns/rfc2136"
	_ "github.com/caddyserver/caddy/v2/modules/standard"
	_ "github.com/porech/caddy-maxmind-geolocation"
)

func main() {
	caddycmd.Main()
}
