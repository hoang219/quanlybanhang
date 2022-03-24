/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author hoang
 */
public class HoaDon {
    private int id;
    private Date ngay;
    private ArrayList<MatHang> listMatHang;

    public HoaDon() {
        super();
    }

    public HoaDon(int id, Date ngay, ArrayList<MatHang> listMatHang) {
        this.id = id;
        this.ngay = ngay;
        this.listMatHang = listMatHang;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getNgay() {
        return ngay;
    }

    public void setNgay(Date ngay) {
        this.ngay = ngay;
    }

    public ArrayList<MatHang> getListMatHang() {
        return listMatHang;
    }

    public void setListMatHang(ArrayList<MatHang> listMatHang) {
        this.listMatHang = listMatHang;
    }
    
}
