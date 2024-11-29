# ONDOKUZ MAYIS UNIVERSITY  
## DEPARTMENT OF COMPUTER ENGINEERING  
### INTRODUCTION TO PROGRAMMING – I COURSE  
**2017 – 2018 FALL SEMESTER ASSIGNMENT – III**  

---

## Project Requirements:
Use the files listed below in your project:
- `teacher_login.txt`  
- `lessonCode.txt`  
- `student.txt`  

---

## Project Description:
When the program is first run, a message saying, **"Welcome to the system"** will be displayed. The system will have two types of users: **Teacher** and **Student**. The program will provide an option to choose one of these two.

### Teacher User Flow:
1. If **"Teacher"** is selected as the user, the program will request:
   - Username  
   - Password  

2. If the entered credentials match the data in the `teacher_login.txt` file, the system will display:  
   **"You have successfully logged into the system."**

3. The program will then prompt the teacher to input:  
   - Student number  
   - Lesson code  
   - Grade information  

4. Validation:  
   - If the lesson code is not found in `lessonCode.txt` **or** the student number is not found in `student.txt`, the system will display a warning and prompt for the information again.  
   - Upon entering valid information, the program will create a text file named after the student’s number and store the information in this file.  

5. It must be possible to **add grades later**!  

---

### Student User Flow:
1. If **"Student"** is selected as the user, the program will request:  
   - Student number  
   - Password  

2. If the entered credentials match the data in the `student.txt` file, the system will display:  
   **"You have successfully logged into the system."**

3. A **"Student"** user can only:  
   - View grades for a single lesson  
   - View grades for all lessons  

---

### Common Functionality:
- After any user logs out, the program should prompt for user login again.  

---

## Notes:
1. Assignments that do not use **hash** and **methods** will not be accepted.  
2. You are expected to define and use methods for:  
   - Logging into the system  
   - Adding grades  
   - Viewing grades  
3. Review the provided screen images to better understand the program requirements.

---

### Example File Names:
- `teacher_login.txt`  
- `lessonCode.txt`  
- `student.txt`  
