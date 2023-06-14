package dal;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import model.Appointment;
import model.Hospital;
import model.TimeRange;

public class AppointmentDAO {

    static Connection conn = null;
    static PreparedStatement ps = null;
    static ResultSet rs = null;

    public static void insertAppointment(String phone, String email, String vaccineName, String hospitalName,
            java.sql.Date appointmentDate, Time startTime, Time endTime) {
        String insertQuery = "INSERT INTO [dbo].[appointment] (idUserVaccineA, idUserBookedA, idAppoinmentProvisionA, "
                + "status, price) VALUES (?, ?, ?, 'Scheduled', 0.0)";

        try {
            conn = new DBContext().getConnect();

            // Get userId based on phone and email
            int userId;
            String userIdQuery = "SELECT idUser FROM [dbo].[user] WHERE phone = ? AND email = ?";
            ps = conn.prepareStatement(userIdQuery);
            ps.setString(1, phone);
            ps.setString(2, email);
            rs = ps.executeQuery();
            if (rs.next()) {
                userId = rs.getInt("idUser");
            } else {
                // Handle case when userId is not found
                return;
            }

            // Get vaccineId based on vaccineName
            int vaccineId;
            String vaccineIdQuery = "SELECT idVaccine FROM [dbo].[vaccine] WHERE name = ?";
            ps = conn.prepareStatement(vaccineIdQuery);
            ps.setString(1, vaccineName);
            rs = ps.executeQuery();
            if (rs.next()) {
                vaccineId = rs.getInt("idVaccine");
            } else {
                // Handle case when vaccineId is not found
                return;
            }

            // Get hospitalId based on hospitalName
            int hospitalId;
            String hospitalIdQuery = "SELECT idH FROM [dbo].[hospital] WHERE name = ?";
            ps = conn.prepareStatement(hospitalIdQuery);
            ps.setString(1, hospitalName);
            rs = ps.executeQuery();
            if (rs.next()) {
                hospitalId = rs.getInt("idH");
            } else {
                // Handle case when hospitalId is not found
                return;
            }

            // Get appointmentProvisionId based on appointmentDate
            int appointmentProvisionId;
            String appointmentProvisionIdQuery = "SELECT idAppointmentProvision FROM [dbo].[appointment_provision] "
                    + "WHERE appointmentDateAt = ?";
            ps = conn.prepareStatement(appointmentProvisionIdQuery);
            ps.setDate(1, appointmentDate);
            rs = ps.executeQuery();
            if (rs.next()) {
                appointmentProvisionId = rs.getInt("idAppointmentProvision");
            } else {
                // Handle case when appointmentProvisionId is not found
                return;
            }

            // Get timeRangeId based on startAt and endAt
            int timeRangeId;
            String timeRangeIdQuery = "SELECT idTimeRange FROM [dbo].[time_range] WHERE startAt = ? AND endAt = ?";
            ps = conn.prepareStatement(timeRangeIdQuery);
            ps.setTime(1, startTime);
            ps.setTime(2, endTime);
            rs = ps.executeQuery();
            if (rs.next()) {
                timeRangeId = rs.getInt("idTimeRange");
            } else {
                // Handle case when timeRangeId is not found
                return;
            }

            // Execute the INSERT statement
            ps = conn.prepareStatement(insertQuery);
            ps.setInt(1, userId);
            ps.setInt(2, userId);
            ps.setInt(3, appointmentProvisionId);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    // Get Appointment by idUsers
    public static List<Appointment> getAppointments(String userId) {
        List<Appointment> appointments = new ArrayList<>();

        String query = "SELECT a.idUserVaccineA, u.username, v.name AS vaccine_name, h.name AS hospital_name, "
                + "a.price, u.gender, ap.appointmentDateAt AS date, tr.startAt, tr.endAt " + "FROM appointment a "
                + "JOIN [user] u ON a.idUserVaccineA = u.idUser "
                + "JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision "
                + "JOIN vaccine v ON ap.idVaccineAP = v.idVaccine " + "JOIN hospital h ON ap.idHAP = h.idH "
                + "JOIN time_range tr ON ap.idTimeRangeAP = tr.idTimeRange " + "WHERE a.idUserVaccineA = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, userId);
            rs = ps.executeQuery();
            while (rs.next()) {
                appointments.add(new Appointment(rs.getInt("idUserVaccineA"), rs.getString("username"),
                        rs.getString("vaccine_name"), rs.getString("hospital_name"), rs.getDouble("price"),
                        rs.getString("gender"), rs.getString("date"), rs.getString("startAt"), rs.getString("endAt")));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ tại đây (ví dụ: ghi log, ném ngoại lệ hoặc thông báo lỗi)
        }

        return appointments;
    }

    // Get Appointment by idHospital
    public static List<Appointment> getAppointmentsByHospitalId(String hospitalId) {
        List<Appointment> appointmentsByH = new ArrayList<>();

        String query = "SELECT a.idUserVaccineA, u.username, v.name AS vaccine_name, h.name AS hospital_name, "
                + "a.price, u.gender, ap.appointmentDateAt AS date, tr.startAt, tr.endAt " + "FROM appointment a "
                + "JOIN [user] u ON a.idUserVaccineA = u.idUser "
                + "INNER JOIN appointment_provision ap ON a.idAppoinmentProvisionA = ap.idAppointmentProvision "
                + "INNER JOIN vaccine v ON ap.idVaccineAP = v.idVaccine " + "INNER JOIN hospital h ON ap.idHAP = h.idH "
                + "INNER JOIN time_range tr ON ap.idTimeRangeAP = tr.idTimeRange " + "WHERE h.idH = ?";

        try {
            conn = new DBContext().getConnect();
            ps = conn.prepareStatement(query);
            ps.setString(1, hospitalId);
            rs = ps.executeQuery();
            while (rs.next()) {
                appointmentsByH.add(new Appointment(rs.getInt("idUserVaccineA"), rs.getString("username"),
                        rs.getString("vaccine_name"), rs.getString("hospital_name"), rs.getDouble("price"),
                        rs.getString("gender"), rs.getString("date"), rs.getString("startAt"), rs.getString("endAt")));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ tại đây (ví dụ: ghi log, ném ngoại lệ hoặc thông báo lỗi)
        }
        return appointmentsByH;
    }

    public static void main(String[] args) {
        AppointmentDAO appointmentDAO = new AppointmentDAO();

//        for (Appointment a : appointmentDAO.getAppointments("1003")) {
//            System.out.println(a);
//        }
//
//        for (Appointment a : appointmentDAO.getAppointmentsByHospitalId("2")) {
//            System.out.println(a);
//
//        }

        //Insert lich hen tiem
        String phone = "0909900009";
        String email = "nomnom15062002@gmail.com";
        String vaccineName = "vaccine 2";
        String hospitalName = "Thang Long";
        LocalDate localDate = LocalDate.of(2023, 01, 15);
        java.sql.Date date = java.sql.Date.valueOf(localDate);
        Time startTime = Time.valueOf("11:30:00");
        Time endTime = Time.valueOf("13:00:00");

        AppointmentDAO.insertAppointment(phone, email, vaccineName, hospitalName, date, startTime, endTime);

        //In ra lich hen tiem theo idH
        String hospitalId = "1";
        List<Appointment> appointments = appointmentDAO.getAppointmentsByHospitalId(hospitalId);
        for (Appointment appointment : appointments) {
            System.out.println("Appointment ID: " + appointment.getIdUserVaccineA());
            System.out.println("Username: " + appointment.getUsername());
            System.out.println("Vaccine Name: " + appointment.getVaccineName());
            System.out.println("Hospital Name: " + appointment.getHospitalName());
            System.out.println("Price: " + appointment.getPrice());
            System.out.println("Gender: " + appointment.getGender());
            System.out.println("Date: " + appointment.getDate());
            System.out.println("Start Time: " + appointment.getStartAt());
            System.out.println("End Time: " + appointment.getEndAt());
            System.out.println("-----------------------------------------");
        }
    }
}
