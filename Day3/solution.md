# Bash Command History Overview

I can't create files directly, but I can provide you with all the information in a single text block that you can easily copy and save into a file. Here's the complete content you can use:

```markdown
# Bash Command History Overview

## Extracting Commands from Bash History

This document provides insights into several commands from the history, focusing on examples related to file handling, text processing, and general shell usage.

### 1. Editing a File

#### Command
```bash
vim sample.txt
```
**Explanation**: Opens `sample.txt` in the Vim text editor for editing.

---

### 2. Counting Lines in a File

#### Command
```bash
cat sample.txt | wc -l
```
**Explanation**: Counts the number of lines in `sample.txt`.

---

### 3. Using `awk` to Process Text

#### Command
```bash
cat sample.txt && wc | awk '{print $1}'
```
**Explanation**: Displays the contents of `sample.txt`, counts words, and prints the first column (word count).

---

### 4. Counting Lines Directly

#### Command
```bash
wc -l sample.txt
```
**Explanation**: Directly counts the number of lines in `sample.txt`.

---

### 5. Displaying File Contents

#### Command
```bash
cat sample.txt
```
**Explanation**: Displays the contents of `sample.txt`.

---

### 6. Clearing the Terminal

#### Command
```bash
clear
```
**Explanation**: Clears the terminal screen.

---

### 7. Changing File Permissions

#### Command
```bash
chmod 700 sample.txt
```
**Explanation**: Sets file permissions of `sample.txt` to read, write, and execute for the owner only.

---

### 8. Listing Files

#### Command
```bash
ls -l
```
**Explanation**: Lists files in the current directory with detailed information.

---

### 9. Creating a Directory

#### Command
```bash
mkdir demo
```
**Explanation**: Creates a new directory named `demo`.

---

### 10. Navigating into a Directory

#### Command
```bash
cd demo/
```
**Explanation**: Changes the current directory to `demo`.

---

### 11. Creating an Empty File

#### Command
```bash
touch demo.txt
```
**Explanation**: Creates a new empty file named `demo.txt`.

---

### 12. Removing a Directory

#### Command
```bash
rm -rf demo/
```
**Explanation**: Recursively removes the `demo` directory and its contents.

---

### 13. Creating a File with Echo

#### Command
```bash
echo "Banana\nApple\nOrange" > fruits.txt
```
**Explanation**: Creates `fruits.txt` with the specified fruit names.

---

### 14. Appending to a File

#### Command
```bash
echo "Pineapple" >> devops.txt
```
**Explanation**: Appends "Pineapple" to `devops.txt`.

---

### 15. Sorting Output

#### Command
```bash
head -n 3 devops.txt | sort -r
```
**Explanation**: Displays the first three lines of `devops.txt` in reverse order.

---

### 16. Comparing Two Files

#### Command
```bash
comm fruits.txt colors.txt
```
**Explanation**: Compares `fruits.txt` and `colors.txt`, showing common and unique lines.

---

### 17. Counting Words in Multiple Files

#### Command
```bash
wc fruits.txt colors.txt
```
**Explanation**: Counts lines, words, and characters in both files.

---

### 18. Finding Differences Between Files

#### Command
```bash
diff fruits.txt colors.txt
```
**Explanation**: Displays the differences between `fruits.txt` and `colors.txt`.

---

### 19. Extracting Common Lines with `comm`

#### Command
```bash
comm -12 <(sort fruits.txt) <(sort colors.txt)
```
**Explanation**: Finds common lines between `fruits.txt` and `colors.txt` after sorting them.

---

### 20. Displaying Last 10 Commands from History

#### Command
```bash
history | tail -n 10
```
**Explanation**: Displays the last 10 commands from the history.

---

### 21. Extracting Commands from History

#### Command
```bash
history | awk '$1 >= 1113 {print $2}'
```
**Explanation**: Displays commands from the history list where the command number is greater than or equal to **1113**.

---

