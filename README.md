# git-diff-color
color lines like git diff

```
diff --git a/file.txt b/file.txt
index 0b669b6..54652ef 100644
--- a/file.txt
+++ b/file.txt
@@ -1,3 +1,4 @@
+import test
1
2
3
@@ -7,4 +8,5 @@
7
8
9
-10
 No newline at end of file
+10
+bar
 No newline at end of file
```

* file description in yellow
```
diff --git a/file.txt b/file.txt
index 0b669b6..54652ef 100644
--- a/file.txt
+++ b/file.txt
```

* chunk header in pink
```
@@ -1,3 +1,4 @@
```

* added lines in green
```
+import test
```

* removed lines in red
```
-10
```

