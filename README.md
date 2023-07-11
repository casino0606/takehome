# Take Home Project

Challenge: A directory contains multiple files and directories of non-uniform file and directory names. Create a program that traverses a base directory and creates an index file that can be used to quickly lookup files by name, size, and content type.

# Usage

<u>**Start the script**</u>
```
sh files.sh 
```

List files by Size.
Files can be search by exact size, less than and greater than size. 

<u>**Example find file equal to 167k**</u>
```
1. List files by size
2. List files by name
3. Search for files with a given extension
4. Exit
Enter your choice: 
1
Listing files by size
Enter file size: 
167k 
========================
-rw-r--r-- 1 root root 167K Jul 11 01:11 test_data/random-forest.png
```

<u>**Example find file greater than 19k**</u>
```
1. List files by size
2. List files by name
3. Search for files with a given extension
4. Exit
Enter your choice: 
1
Listing files by size
Enter file size: 
+19k

========================
-rw-r--r-- 1 root root 20K Jul 11 01:11 test_data/linear-regression-plot.jpg
-rw-r--r-- 1 root root 167K Jul 11 01:11 test_data/random-forest.png
```

<u>**List files by name**</u>
```
1. List files by size
2. List files by name
3. Search for files with a given extension
4. Exit
Enter your choice: 
2
Listing files by name
Enter file name: 
user1.json

========================
test_data/data/user1.json
```

<u>**List files by extension**</u>
```
1. List files by size
2. List files by name
3. Search for files with a given extension
4. Exit
Enter your choice: 
3
Search for files with a given extension
Enter file extension: 
json

========================
test_data/data/user1.json
test_data/data/user2.json
```