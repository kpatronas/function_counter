# 📜 Function Call Counter

A small Bash script that scans a Bash file and **counts how many times each function is called**.  
Useful for **code cleanup**, **refactoring**, and **finding unused functions** in large scripts.

---

## 🚀 Features

- Detects functions defined with or without the `function` keyword
- Ignores commented-out code
- Displays results in a clean, aligned table
- Highlights unused or rarely used functions
- Works on **macOS**, **Linux**, and **BSD** systems — no dependencies

---

## 🛠 Usage

1. Save the script as `count_function_calls.sh`.
2. Make it executable:

   ```bash
   chmod +x count_function_calls.sh
   ```
3. Run it:

   ```bash
   ./count_function_calls.sh my_script.sh

     Function Name                       | Call Count
   --------------------------------------+-----------
      main_menu                          | 12
      choose_service                     | 2
      ask_yes_no                         | 1
      unused_helper                      | 0
   ```
