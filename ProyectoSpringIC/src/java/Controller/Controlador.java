/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entidad.Habitacion;
import config.Conexion;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author hgosa
 */
@Controller
public class Controlador {
    
    
    Conexion con = new Conexion();
    JdbcTemplate jdbcTemplate = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView();
    int id;
    List datos;
    
    @RequestMapping("index.htm")
    public ModelAndView Listar(){
        String sql = "SELECT * FROM `mingesoIC`.`Habitacion`";
        datos = this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("index");
        return mav;
    }
    
    @RequestMapping(value ="agregar.htm", method = RequestMethod.GET)
    public ModelAndView Agregar(){
        mav.addObject(new Habitacion());
        mav.setViewName("agregar");
        return mav;
        
    }
    @RequestMapping(value ="agregar.htm", method = RequestMethod.POST)
    public ModelAndView Agregar(Habitacion hab){
        String sql = "Insert into `mingesoIC`.`Habitacion` (COD_HABITACION, TIPO_HABITACION, COSTO_HABITACION) values(?,?,?)";
        this.jdbcTemplate.update(sql, hab.getCodigo(), hab.getTipo(), hab.getPrecio());
        return new ModelAndView("redirect:/index.htm");      
    }
    @RequestMapping(value ="editar.htm", method = RequestMethod.GET)
    public ModelAndView Editar(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("cod"));
        String sql = "SELECT * FROM `mingesoIC`.`Habitacion` where idHabitacion="+id;
        datos=this.jdbcTemplate.queryForList(sql);
        mav.addObject("lista",datos);
        mav.setViewName("editar");
        return mav;
        
    }
    @RequestMapping(value ="editar.htm", method = RequestMethod.POST)
    public ModelAndView Editar(Habitacion hab){
        String sql = "update `mingesoIC`.`Habitacion` set COD_HABITACION=?, TIPO_HABITACION=?, COSTO_HABITACION=? where idHabitacion="+id;
        this.jdbcTemplate.update(sql, hab.getCodigo(), hab.getTipo(), hab.getPrecio());
        return new ModelAndView("redirect:/index.htm");      
    }
    @RequestMapping("delete.htm")
    public ModelAndView Delete(HttpServletRequest request){
        id=Integer.parseInt(request.getParameter("cod"));
        String sql = "delete from `mingesoIC`.`Habitacion` where idHabitacion="+id;
        this.jdbcTemplate.update(sql);
        return new ModelAndView("redirect:/index.htm");
    }
    
}
