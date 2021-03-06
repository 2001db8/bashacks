bh_host2irt()
{
    local host="${1:-`bh_myip`}"
    local hosts=$(getent ahosts "${host}" \
                      | cut -d' ' -f1 \
		      | sort -u)

    for ipaddress in $(echo ${hosts}); do
        echo "$ipaddress:"
        bh_ip2irt "$ipaddress"
    done
}
