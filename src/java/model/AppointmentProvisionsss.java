/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class AppointmentProvisionsss {
    private String startAt, endAt, appointmentDateAt;

    public AppointmentProvisionsss() {
    }

    public AppointmentProvisionsss(String startAt, String endAt, String appointmentDateAt) {
        this.startAt = startAt;
        this.endAt = endAt;
        this.appointmentDateAt = appointmentDateAt;
    }

    public String getStartAt() {
        return startAt;
    }

    public void setStartAt(String startAt) {
        this.startAt = startAt;
    }

    public String getEndAt() {
        return endAt;
    }

    public void setEndAt(String endAt) {
        this.endAt = endAt;
    }

    public String getAppointmentDateAt() {
        return appointmentDateAt;
    }

    public void setAppointmentDateAt(String appointmentDateAt) {
        this.appointmentDateAt = appointmentDateAt;
    }

    @Override
    public String toString() {
        return "AppointmentProvisionsss{" + "startAt=" + startAt + ", endAt=" + endAt + ", appointmentDateAt=" + appointmentDateAt + '}';
    }
    
    
}
