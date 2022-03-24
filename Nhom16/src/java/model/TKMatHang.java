/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author hoang
 */
public class TKMatHang extends MatHang {
    private double tongtien;

    public TKMatHang() {
    }

    public TKMatHang(double tongtien) {
        this.tongtien = tongtien;
    }

    public TKMatHang(int id, String ten, double dongia, double tongtien) {
        super(id, ten, dongia);
        this.tongtien = tongtien;
    }
    
    public TKMatHang(MatHang mathang, double tongtien) {
        super(mathang.getId(), mathang.getTen(), mathang.getDongia());
        this.tongtien = tongtien;
    }

    public double getTongtien() {
        return tongtien;
    }

    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }
}
