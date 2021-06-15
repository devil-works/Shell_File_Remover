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
while [ $count -lt 1000 ]; do
    ls -f . | head -n 1000 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 1
done

```

- while [ $count -lt int ]; do
  <br>
  (How many times repeat the process)
  <br>
  <br>
- ls -f . | head -n int | perl -lne unlink
  <br>
  How many files remove at once
  <br>
  <br>
- sleep int
  <br>
  (interval int sec.)
  <br>
  <br>

<!-- dummy comment line for breaking list -->

2.Place remove.sh in the target derectory
<br>
<br>
![remover](https://user-images.githubusercontent.com/58777805/121777469-39007e80-cbcd-11eb-89ee-844648d7bb48.png)

\*FTP client hardly works for huge directory.In my case,the size of the target directory was 50GB.I needed to upload remove.sh to the target directory with command line.

You have to run locally. So I used Git Bash.

<br>
*This time remove.sh is prepared in the root directory of the C drive.

```Bash
$ cd /c/
$ scp remove.sh [Server Name]@[Server IP]:/PATH/TO/TARGET_DIR
PASSWORD REQUIRED ********(Input your password)
```

<br>
<br>
<br>

3.Run remove.sh on commmand line

Move to the target directory and run it.

```Shell
$ cd target_directory
$ sh remove.sh
```

<br>

# Additional usage

```Shell
#!/bin/sh

count=0
while [ $count -lt 1000 ]; do
    echo $count;
    ls -f . | head -n 1000 | perl -lne unlink
    count=`expr ${count} + 1`
    sleep 1
done
```

Added the counter "echo $count;" to visualize the number of executions.
