# 🔧 How to Run C Programs - Complete Guide

## 📝 **The Process Overview**
Running a C program involves 2 main steps:
1. **Compilation** - Convert C code to machine code
2. **Execution** - Run the compiled program

---

## 🛠️ **Step-by-Step Instructions**

### **Step 1: Write Your C Code**
```c
// example.c
#include <stdio.h>
int main() {
    printf("Hello, World!\n");
    return 0;
}
```

### **Step 2: Compile the Program**
Open PowerShell/Command Prompt in your project folder and run:

```powershell
gcc -o program_name.exe source_file.c
```

**Real Example:**
```powershell
gcc -o overflow.exe overflow.c
```

**What this does:**
- `gcc` = GNU C Compiler
- `-o overflow.exe` = Output executable named "overflow.exe"
- `overflow.c` = Your source code file

### **Step 3: Run the Program**
```powershell
.\program_name.exe
```

**Real Example:**
```powershell
.\overflow.exe
```

---

## ⚡ **Quick Reference Commands**

### **Single Line Compile & Run:**
```powershell
gcc -o program.exe program.c ; .\program.exe
```

### **Check if GCC is Installed:**
```powershell
gcc --version
```

### **Compile with Debug Info:**
```powershell
gcc -g -o program.exe program.c
```

### **Compile with Warnings:**
```powershell
gcc -Wall -o program.exe program.c
```

---

## 🔍 **What Happens During Compilation?**

1. **Preprocessing** - Handles `#include`, `#define`, etc.
2. **Compilation** - Converts C code to assembly
3. **Assembly** - Converts assembly to machine code
4. **Linking** - Links with libraries to create executable

```
source.c → [PREPROCESSING] → [COMPILATION] → [ASSEMBLY] → [LINKING] → program.exe
```

---

## 🐛 **Common Errors & Solutions**

### **Error: "gcc is not recognized"**
**Solution:** Install MinGW-w64 or Visual Studio Build Tools

### **Error: "Permission denied"**
**Solution:** Make sure you're in the right directory and have write permissions

### **Error: Compilation errors**
**Solution:** Check your C syntax, missing semicolons, brackets, etc.

---

## 📁 **File Structure Example**
```
YourProject/
├── 📄 program.c         # Your source code
├── 📄 program.exe       # Compiled executable (created by gcc)
└── 📄 README.md         # Documentation
```

---

## 💡 **Pro Tips**

1. **Name your executables clearly:** `overflow.exe`, `calculator.exe`
2. **Use meaningful source file names:** `overflow.c`, `calculator.c`
3. **Always test your program after compilation**
4. **Keep source code and executables in the same folder initially**
5. **Delete old .exe files when you make changes to avoid confusion**

---

## 🎯 **Your Workflow**
```powershell
# 1. Write code in VS Code (overflow.c)
# 2. Open terminal in VS Code (Ctrl + `)
# 3. Compile
gcc -o overflow.exe overflow.c

# 4. Run
.\overflow.exe

# 5. Make changes and repeat!
```

---

**Happy Coding! 🚀**

*Remember: Every time you change your C code, you need to recompile before running!*
