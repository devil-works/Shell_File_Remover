# File Remover

When I was in charge of management Web Infra in my company at the first time, it was terrible.
There are directory has hundreds of millions of image files.

Then I had to remove all of the them, but the FTP client didn't work for it because the FTP client tries to find the all file names before removing. I couldn't even open the directory.

So I tried to remove using command line-
<br>
<br>
<br>

# Usage



```Shell
count=0
while [ $count -lt 10 ]; do
    ls -f . | head -n 10 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 2
done

```