
#find src_react  -regextype posix-basic -regex '.*\.css$'
#find src  -regextype posix-basic -regex '.*\.css$'

FROM=src_react
TO=src
#find ${FROM}  -regextype posix-basic -regex '.*\.css$'
#find ${TO}  -regextype posix-basic -regex '.*\.css$'

cpaths=(`find ${FROM}  -regextype posix-basic -regex '.*\.css$'`)

for cpath in "${cpaths[@]}"  
do
    dpath=${cpath/_react/}
    echo "cpath: $cpath"
    echo "dpath: $dpath"
    cp $cpath $dpath
done

echo -----------------------------
find ${TO}  -regextype posix-basic -regex '.*\.css$'
