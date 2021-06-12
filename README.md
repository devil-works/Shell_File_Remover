# File Remover

When I was in charge of management Web Infra in my company at the first time, it was terrible.
There are directory has hundreds of millions of image files.

Then I had to remove all of the them, but the FTP client didn't work for it because the FTP client tries to find the all file names before removing. I couldn't even open the directory.

So I tried to remove using command line-
<br>
<br>
<br>

# Usage

1.Customize remove.sh
<br>
<br>

```Shell
rermove.sh

count=0
while [ $count -lt 10 ]; do
    ls -f . | head -n 10 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 2
done

```

- while [ $count -lt int ]; do
  <br>
  (How many times repeat the process)
  <br>
  <br>
- ls -f . | head -n 10 | perl -lne unlink
  <br>
  How many files remove at once
  <br>
  <br>
- sleep int
  <br>
  (interval int sec.)
  <br>
  <br>

  2.Place remove.sh in the target derectory
  <br>
  <br>
  ![remover](https://user-images.githubusercontent.com/58777805/121777469-39007e80-cbcd-11eb-89ee-844648d7bb48.png)

  2.Execute remove.sh on commmand line
