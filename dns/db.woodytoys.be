$TTL 86400
@ IN SOA ns1.woodytoys.be. admin.woodytoys.be. (
  2021031801 ; Serial
  3600 ; Refresh
  1800 ; Retry
  604800 ; Expire
  86400 ; TTL
)

@ IN NS ns1.woodytoys.be.

ns1 IN A <IP address of your DNS server>

www IN CNAME woodytoys.be.
b2b IN CNAME woodytoys.be.