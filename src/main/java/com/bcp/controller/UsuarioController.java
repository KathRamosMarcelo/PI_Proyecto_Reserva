package com.bcp.controller;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.bcp.entidad.Usuario;
import com.bcp.servicio.UsuarioServicio;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioServicio usuario_servicio;
	
	@RequestMapping("/consultaCrudUsuario")
	public String lista(String filtro, HttpSession session) {
		List<Usuario> lista = usuario_servicio.listarPorNombre(filtro + "%");
		session.setAttribute("usuarios", lista);
		return "intranetHome";
	}

	@RequestMapping("/salidaUsuario")
	public String listTodos(HttpSession session) {
		List<Usuario> data = usuario_servicio.listarTodos();
		session.setAttribute("usuarios", data);
		return "intranetHome";
	}

}
