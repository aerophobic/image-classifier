ITER=0
for file in ./${1}/**; do
  if [ -f "$file" ]; then
    echo "${1}_${ITER}.${file##*.}"
    mv "$file" "${1}/${1}_${ITER}.${file##*.}"
    ITER=$(expr $ITER + 1)
  fi
done
