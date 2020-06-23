docker run --rm -v $1:/tf_files -v $2:/toScan -v $3:/scanned zhaw/image-classification:1.0.0 sh -c  "./guessDir.sh" 2>
