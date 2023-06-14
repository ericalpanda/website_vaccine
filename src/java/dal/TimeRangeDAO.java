package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import model.TimeRange;

public class TimeRangeDAO {

    public static Time findStartByIdTimeRange(int idTimeRangeAP) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Time startTime = null;

        try {
            conn = new DBContext().getConnect();
            String query = "SELECT startAt FROM time_range WHERE idTimeRange = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, idTimeRangeAP);
            rs = ps.executeQuery();

            if (rs.next()) {
                startTime = rs.getTime(1);
            }
        } catch (SQLException e) {
        }
        return startTime;
    }

    public static Time findEndByIdTimeRange(int idTimeRangeAP) {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        Time endTime = null;

        try {
            conn = new DBContext().getConnect();
            String query = "SELECT endAt FROM time_range WHERE idTimeRange = ?";
            ps = conn.prepareStatement(query);
            ps.setInt(1, idTimeRangeAP);
            rs = ps.executeQuery();

            if (rs.next()) {
                endTime = rs.getTime(1);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } 

        return endTime;
    }

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<TimeRange> getTimeRange() {
        List<TimeRange> list = new ArrayList<>();
        String query = "select * from time_range";
        try {
            conn = new DBContext().getConnect();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new TimeRange(rs.getInt(1), rs.getTime(2), rs.getTime(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        TimeRangeDAO dao = new TimeRangeDAO();
//        List<TimeRange> list = dao.getTimeRange();
//        for (TimeRange o : list) {
//            System.out.println(o);
//        }
        
        System.out.println(dao.findStartByIdTimeRange(1));
        
        System.out.println(dao.findEndByIdTimeRange(1));
    }
}
