#!/bin/bash

SOURCE=https://gist.githubusercontent.com/okutbay/5b4974b70673dfdcc21c517632c1f984/raw/free_email_provider_domains.txt
OUTFILE=lib/ped/domains.txt

echo "Fetching domains from '${SOURCE}'"
curl -s -o ${OUTFILE} ${SOURCE}
echo "Wrote '${OUTFILE}'"
