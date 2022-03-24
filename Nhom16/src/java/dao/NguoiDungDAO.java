/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import static dao.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import model.NguoiDung;

/**
 *
 * @author hoang
 */
public class NguoiDungDAO extends DAO {
    public NguoiDung kiemTraDangNhap(NguoiDung user){
        NguoiDung result = new NguoiDung();
        String sql = "SELECT taikhoan, ten, chucvu FROM tblnguoidung WHERE taikhoan = ? AND matkhau = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getTaikhoan());
            ps.setString(2, user.getMatkhau());
             
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                result.setTaikhoan(rs.getString("taikhoan"));
                result.setTen(rs.getString("ten"));
                result.setChucvu(rs.getInt("chucvu"));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public NguoiDung getNguoiDung(int id){
        NguoiDung result = new NguoiDung();
        String sql = "SELECT * FROM tblnguoidung WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
             
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                result.setId(rs.getInt("id"));
                result.setTaikhoan(rs.getString("taikhoan"));
                result.setTen(rs.getString("ten"));
                result.setDiachi(rs.getString("diachi"));
                result.setChucvu(rs.getInt("chucvu"));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public int themNhanVien(NguoiDung user){
        String sql = "SELECT * FROM tblnguoidung WHERE taikhoan = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getTaikhoan());
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                return 2;
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        sql = "INSERT INTO tblnguoidung (taikhoan, matkhau, ten, ngaysinh, diachi,chucvu) VALUES (?, ?, ?, ?, ?, 2)";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, user.getTaikhoan());
            ps.setString(2, user.getMatkhau());
            ps.setString(3, user.getTen());
            ps.setString(4, new SimpleDateFormat("yyyy-MM-dd").format(user.getNgaysinh()));
            ps.setString(5, user.getDiachi());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            return 3;
        }
        return 1;
    }
    
    public ArrayList<NguoiDung> timKiemNguoiDung(String ten){
        ArrayList<NguoiDung> result = new ArrayList<>();
        String sql = "SELECT * FROM tblnguoidung WHERE ten LIKE ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + ten + "%");
             
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                NguoiDung user = new NguoiDung();
                user.setId(rs.getInt("id"));
                user.setTaikhoan(rs.getString("taikhoan"));
                user.setTen(rs.getString("ten"));
                user.setDiachi(rs.getString("diachi"));
                user.setChucvu(rs.getInt("chucvu"));
                result.add(user);
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    private String xuLyChuoi(String s){
        String result = "";
        for(int i = 0; i<s.length(); i++){
            if(s.charAt(i) != '+'){
                result += s.charAt(i);
            }else{
                result += " ";
            }
        }
        return result;
    }
}
