package model;

import java.sql.Time;
import java.text.SimpleDateFormat;

public class TimeRange {
    private int id;
    private Time startTime;
    private Time endTime;

    public TimeRange() {
    }
    
    public TimeRange(int id, Time startTime, Time endTime) {
        this.id = id;
        this.startTime = startTime;
        this.endTime = endTime;
    }

    public int getId() {
        return id;
    }

    public Time getStartTime() {
        return startTime;
    }

    public Time getEndTime() {
        return endTime;
    }

    @Override
    public String toString() {
        return "TimeRange{" + "id=" + id + ", startTime=" + startTime + ", endTime=" + endTime + '}';
    }
    
}
