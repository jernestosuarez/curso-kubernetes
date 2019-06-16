kubectl create secret tls edu-wedoops-tls-cert \
	--key  certs/edu.wedoops.io.key \
	--cert certs/edu.wedoops.io.crt \
	--dry-run -o yaml | kubectl apply -f -