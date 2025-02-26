# VoteBox

**VoteBox** is a voting application developed in **.NET Framework (C#)** with **MS SQL Server** as the backend. It provides a secure and user-friendly system for managing elections, collecting votes, and displaying results. This project is designed for organizational, community, or event-based voting, not for government elections.

## Features

- **User Authentication:** Secure login for voters and administrators.
- **Candidate Management:** Admins can add, update, and remove candidates.
- **Voting System:** Users can cast their votes securely.
- **Real-time Results:** Display live vote counts and election results.
- **Audit Logs:** Tracks user activities and voting history.
- **Role-Based Access Control:** Admins and voters have different privileges.

## Technologies Used

- **Frontend:** ASP.NET Web Forms / MVC (C#)
- **Backend:** .NET Framework (C#)
- **Database:** MS SQL Server
- **Authentication:** ASP.NET Identity
- **UI Framework:** Bootstrap (optional)

## Installation Guide

### Prerequisites

- **.NET Framework (v4.7 or later)**
- **SQL Server (2016 or later)**
- **Visual Studio (2019 or later)**

### Setup Steps

1. **Clone the repository:**
   ```sh
   git clone https://github.com/yourusername/VoteBox.git
   cd VoteBox
   ```

2. **Restore dependencies:**
   Open the solution in **Visual Studio** and restore NuGet packages.

3. **Database Configuration:**
   - Open **SQL Server Management Studio (SSMS)**.
   - Execute the provided `VoteBox_DB.sql` script to create the database.
   - Update the `connectionStrings` in `web.config`:
     ```xml
     <connectionStrings>
         <add name="VoteBoxDB" connectionString="Server=YOUR_SERVER;Database=VoteBox;User Id=YOUR_USER;Password=YOUR_PASSWORD;" providerName="System.Data.SqlClient" />
     </connectionStrings>
     ```

4. **Run the application:**  
   Press **F5** in Visual Studio or use IIS Express.

## Usage

1. **Admin Login:**  
   - Navigate to `/Admin/Login`
   - Use default credentials (`admin/admin123`) or register a new admin.

2. **Add Candidates:**  
   - Go to **Candidates Management** in the admin panel.
   - Add details such as name, party, and profile.

3. **Voting Process:**  
   - Users log in and access the voting dashboard.
   - They select their preferred candidate and submit their vote.

4. **Results Display:**  
   - Admins can view real-time vote counts.
   - Results are displayed in graphical and tabular formats.

## Future Enhancements

- Implementing **Two-Factor Authentication (2FA)**.
- Enhancing the **UI with modern frameworks**.
- Introducing **Blockchain-based vote verification**.
- Adding **Email notifications** for voters.


