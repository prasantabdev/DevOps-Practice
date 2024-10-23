# Common Linux Commands

Here are some commonly used Linux commands, along with explanations and examples to illustrate their functionality:

## 1. `ls -l`
Lists files and directories in the current directory with detailed information including permissions, number of links, owner, group, size, and last modified date.

**Example:**
```bash
$ ls -l
total 12
drwxr-xr-x 2 user group 4096 Oct 23 10:00 Documents
-rw-r--r-- 1 user group  123 Oct 23 09:30 notes.txt
```

## 2. `ls -a`
Lists all files and directories, including hidden ones (those starting with a dot).

**Example:**
```bash
$ ls -a
.  ..  .bashrc  .git  Documents  notes.txt
```

## 3. `ls *.md`
Lists all files in the current directory that have the `.md` extension.

**Example:**
```bash
$ ls *.md
README.md  notes.md
```

## 4. `ls -i`
Displays the inode number of each file and directory, which is a unique identifier on the filesystem.

**Example:**
```bash
$ ls -i
1234567 Documents  1234568 notes.txt
```

## 5. `ls -d */`
Lists only directories in the current directory.

**Example:**
```bash
$ ls -d */
Documents/  Downloads/  Music/  Pictures/
```

## 6. `pwd`
Prints the current working directory, showing the full path.

**Example:**
```bash
$ pwd
/home/user/Documents
```

## 7. `cd ..`
Changes the current directory to the parent directory.

**Example:**
```bash
$ cd ..
$ pwd
/home/user
```

## 8. `cd Day2/`
Changes the current directory to `Day2`, which is a subdirectory of the current directory.

**Example:**
```bash
$ cd Day2/
$ pwd
/home/user/Day2
```

## 9. `mkdir demo`
Creates a new directory named `demo`.

**Example:**
```bash
$ mkdir demo
$ ls
demo/
```

## 10. `rm -rf demo/`
Removes the directory named `demo` and all of its contents recursively and forcefully.

**Example:**
```bash
$ rm -rf demo/
$ ls
```

---

Feel free to use these commands in your Linux terminal to navigate and manage files efficiently!
