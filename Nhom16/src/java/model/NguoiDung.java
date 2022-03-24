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
public class NguoiDung {
    
    private int id;
    private String taikhoan;
    private String matkhau;
    private String ten;
    private Date ngaysinh;
    private String diachi;
    private int chucvu;
    
    public NguoiDung(){
        super();
    }

    public NguoiDung(int id, String taikhoan, String matkhau, String ten, Date ngaysinh, String diachi, int chucvu) {
        this.id = id;
        this.taikhoan = taikhoan;
        this.matkhau = matkhau;
        this.ten = ten;
        this.ngaysinh = ngaysinh;
        this.diachi = diachi;
        this.chucvu = chucvu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTaikhoan() {
        return taikhoan;
    }

    public void setTaikhoan(String taikhoan) {
        this.taikhoan = taikhoan;
    }

    public String getMatkhau() {
        return matkhau;
    }

    public void setMatkhau(String matkhau) {
        this.matkhau = matkhau;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public Date getNgaysinh() {
        return ngaysinh;
    }

    public void setNgaysinh(Date ngaysinh) {
        this.ngaysinh = ngaysinh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public int getChucvu() {
        return chucvu;
    }

    public void setChucvu(int chucvu) {
        this.chucvu = chucvu;
    }
    
    public String getTenchucvu() {
        if(chucvu == 1) return "Quản lý";
        if(chucvu == 2) return "Nhân viên";
        return "Không xác định";
    }
}
