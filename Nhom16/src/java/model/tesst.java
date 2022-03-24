/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.MatHangDAO;
import dao.NguoiDungDAO;
import java.util.ArrayList;

/**
 *
 * @author hoang
 */
public class tesst {
    public static void main(String[] args){
        ArrayList<NguoiDung> listMH = new NguoiDungDAO().timKiemNguoiDung("Nguyễn+Ngọc+Hoàng");
        System.out.println(listMH.size());
    }
}
