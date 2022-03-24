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
public class TKNhaCC extends NhaCungCap{
    private double tongtien;

    public TKNhaCC() {
        super();
    }

    public TKNhaCC(double tongtien) {
        this.tongtien = tongtien;
    }

    public TKNhaCC(int id, String ten, String diachi, double tongtien) {
        super(id, ten, diachi);
        this.tongtien = tongtien;
    }
    
    public TKNhaCC(NhaCungCap ncc, double tongtien) {
        super(ncc.getId(), ncc.getTen(), ncc.getDiachi());
        this.tongtien = tongtien;
    }

    public double getTongtien() {
        return tongtien;
    }

    public void setTongtien(double tongtien) {
        this.tongtien = tongtien;
    }
}
