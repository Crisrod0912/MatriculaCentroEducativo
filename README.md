# 🎓 Matrícula de Centro Educativo

The database's main objective is the storage and management of crucial information for the academic administration of an educational institution. It centralizes and organizes critical academic data to ensure efficiency, integrity, and security.

## 📚 Managed Information

### 👨‍🎓 Students
Stores personal, academic, and administrative information such as:
- 📛 Full name  
- 🎂 Date of birth  
- 🆔 Unique ID  
- 📖 Academic history  
- 🗂️ Administrative records  

### 📘 Subjects
Complete catalog of courses offered by the institution, including:
- 🏷️ Subject name  
- 📝 Description  
- 🔢 Unique code  
- 🎓 Credits  
- 🔗 Prerequisites  

### 👨‍🏫 Professors
Faculty personal and professional data:
- 📛 Full name  
- 🎯 Specialization  
- 🆔 Unique ID  
- 📧 Contact information  
- 🕒 Availability  
- 📚 Courses taught  

### 🗓️ Schedules
Class scheduling details:
- 📅 Day  
- ⏰ Time  
- 🏫 Classroom  
- ⏳ Duration  
- 👨‍🏫 Assigned professor  
- 📘 Subject  

### ⏸️ Enrollment Freezes
Records of temporary academic suspensions:
- 📝 Reason  
- 📆 Start date  
- 📆 End date  

## 🚀 Features

- ⚙️ **Functionality:**
   - 🔐 Secure and efficient information storage  
   - ⚡ Fast data search and retrieval  
   - 📊 Academic reports and statistics generation  
   - 👥 Role-based access control (administrators, professors, students)  
   - ✔️ Data validation rules to ensure integrity  
   - 🖥️ Intuitive and user-friendly database management  

- 📈 **Scalability:**
   - 📊 Adaptable to institutional growth  
   - 🧩 Flexible for future feature expansion  

- 🛡️ **Security:**
   - 🔒 Protection of confidential academic information  
   - 🚫 Prevention of unauthorized access or modification  
   - 💾 Backup and recovery mechanisms  

## 🛠️ Technologies Used

- 🗄️ **Database:** Microsoft SQL Server  
- 🌱 **Version Control:** Git

## ⚙️ Installation

### 📋 Prerequisites

- 🧰 [SQL Server Management Studio 2022](https://learn.microsoft.com/en-us/ssms/install/install)

---

### ⚙️ Configuration

Follow these steps to configure and execute the project:

📥 **Step 1: Clone the repository**

   ```bash
   git clone https://github.com/Crisrod0912/MatriculaCentroEducativo.git
   ```

🗄️ **Step 2: Set up the Microsoft SQL Server database**

  - Open **SQL Server Management Studio**.
  - Create a new database called `CentroEducativo`.
  - Import the provided SQL file `CentroEducativo.sql` into the `CentroEducativo` database using your server.

▶️ **Step 3: Execute the SQL script**

  - Execute the script `CentroEducativo.sql` in your database.

> [!NOTE]
> **Project Owner / Developer** 👨🏻‍💻  
>- Cristopher Rodríguez Fernández 
***
