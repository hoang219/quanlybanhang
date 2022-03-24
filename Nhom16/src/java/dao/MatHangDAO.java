package dao;

import static dao.DAO.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.MatHang;

/**
 *
 * @author hoang
 */
public class MatHangDAO extends DAO {
    public boolean themMatHang(MatHang mathang){      
        String sql = "INSERT INTO tblmathang (ten, dongia) VALUES (?, ?)";
        try{
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, mathang.getTen());
            ps.setString(2, "" + mathang.getDongia());
            ps.executeUpdate();
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }
    
    public MatHang getMatHang(int id){
        MatHang result = new MatHang();
        String sql = "SELECT * FROM tblmathang WHERE id = ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
             
            ResultSet rs = ps.executeQuery();
            if(rs.next()) {
                MatHang mathang = new MatHang();
                mathang.setId(rs.getInt("id"));
                mathang.setTen(rs.getString("ten"));
                mathang.setDongia(rs.getDouble("dongia"));
            }
        }catch(Exception e) {
            e.printStackTrace();
        }
        return result;
    }
    
    public ArrayList<MatHang> timKiemMatHang(String ten){
        ArrayList<MatHang> result = new ArrayList<>();
        String sql = "SELECT * FROM tblmathang WHERE ten LIKE ?";
        try {
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, "%" + ten + "%");
             
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                MatHang mathang = new MatHang();
                mathang.setId(rs.getInt("id"));
                mathang.setTen(rs.getString("ten"));
                mathang.setDongia(rs.getDouble("dongia"));
                result.add(mathang);
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
