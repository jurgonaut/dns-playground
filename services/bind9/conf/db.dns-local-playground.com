$TTL    604800
@       IN      SOA     ns1.dns-local-playground.com. root.dns-local-playground.com. (
                  3     ; Serial
             604800     ; Refresh
              86400     ; Retry
            2419200     ; Expire
             604800 )   ; Negative Cache TTL
;
; name servers - NS records
@    IN      NS      ns1.dns-local-playground.com.
@    IN      A       173.21.0.2

; name servers - A records
ns1          IN      A      173.21.0.2

joe          IN      A      173.21.0.3
frank        IN      A      173.21.0.4
