/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class appointmentDateAt {
    private Date appointmentDateAt;

    public appointmentDateAt() {
    }

    public appointmentDateAt(Date appointmentDateAt) {
        this.appointmentDateAt = appointmentDateAt;
    }

    public Date getAppointmentDateAt() {
        return appointmentDateAt;
    }

    public void setAppointmentDateAt(Date appointmentDateAt) {
        this.appointmentDateAt = appointmentDateAt;
    }

    @Override
    public String toString() {
        return "appointmentDateAt{" + "appointmentDateAt=" + appointmentDateAt + '}';
    }
    
    
}
