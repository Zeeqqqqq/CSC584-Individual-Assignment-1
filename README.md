# CSC584 Individual Assignment 1

## Personal Profile Web Application

### Project Description
This project is a Personal Profile Web Application developed for CSC584 Enterprise Programming. It allows users to enter their personal information through an HTML form and generate a profile page displaying the submitted details.

The application uses Java Servlet to process the form submission and JavaServer Pages (JSP) to display the profile information.

### Technologies Used
- HTML5
- CSS3
- Java Servlet
- JavaServer Pages (JSP)
- Java Development Kit (JDK) 8
- Java EE 7 Web
- NetBeans IDE 8.2
- GlassFish Server 4.1.1

### Application Features
- Personal profile form with six input fields: Full Name, Student ID, Programme, Email Address, Hobbies, and Short Self-Introduction.
- Form submission using the HTTP POST method.
- Java Servlet processing using `request.getParameter()`.
- Data forwarding to JSP using `RequestDispatcher`.
- Profile display with a styled interface.
- Navigation back to the profile form.

### Project Structure
- `web/index.html`: Personal profile input form.
- `web/profile.jsp`: Displays the submitted profile information.
- `src/java/com/csc584/profile/ProfileServlet.java`: Processes form data and forwards it to the JSP page.
- `screenshots/`: Screenshots of the application.

### How to Run the Application
1. Install JDK 8 and NetBeans IDE 8.2.
2. Configure GlassFish Server 4.1.1 in NetBeans.
3. Open NetBeans and select **File > Open Project**.
4. Select the `CSC584_IndividualAssignment1` project folder.
5. Ensure GlassFish Server 4.1.1 is selected as the application server.
6. Right-click the project and select **Clean and Build**.
7. Right-click the project and select **Run**.
8. Open `http://localhost:8080/CSC584_IndividualAssignment1/` if the browser does not open automatically.
9. Fill in all six fields and click **Generate My Profile**.
10. The submitted information will be displayed on the profile page.

### Screenshots
The `screenshots` folder contains:
- `01-profile-form.png`: Empty personal profile form.
- `02-filled-form.png`: Completed form before submission.
- `03-profile-output.png`: Profile page displaying submitted information.

### Notes
- The application does not require database integration.
- Profile information is processed using an HTML form, Java Servlet and JSP.
- The project was developed using NetBeans IDE 8.2 and GlassFish Server 4.1.1.
