/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author hoang
 */
public class TKThoiGian {
    private Date ngay;
    private double tongtien;

    public TKThoiGian() {
        super();
    }

    public TKThoiGian(Date ngay, double tongtien) {
        this.ngay = ngay;
        this.tongtien = tongtien;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }

    public double getTongtien() {
        return tongtien;
    }

    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }
}
