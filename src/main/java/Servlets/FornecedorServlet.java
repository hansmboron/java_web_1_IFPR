package Servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.taglibs.standard.tag.common.fmt.ParseDateSupport;

import Dao.FornecedorDAO;
import Model.Fornecedor;

/**
 * Servlet implementation class FornecedorServlet
 */
@WebServlet("/FornecedorServlet")
public class FornecedorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private FornecedorDAO fornecedorDAO = new FornecedorDAO();

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FornecedorServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		String param = request.getParameter("pagina");
		String acao = request.getParameter("acao");
		String id = request.getParameter("id");
		
		try {
			if (acao != null && acao.equals("delete")) {
				Integer code = Integer.parseInt(id);
				fornecedorDAO.excluir(code);
				request.setAttribute("mensagem", "Fornecedor Excluido com sucesso!");
				request.setAttribute("fornecedores", fornecedorDAO.getFornecedor());
			} else if (acao != null && acao.equals("update")) {
				Integer code = Integer.parseInt(id);

				Fornecedor fornecedor = FornecedorDAO.getFornecedorById(code);
				request.setAttribute("forn", fornecedor);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		try {
			request.setAttribute("fornecedores", fornecedorDAO.getFornecedor());
		} catch (ClassNotFoundException | SQLException e) {
			request.setAttribute("mensagem", "Erro Driver | Banco de Dados");
//			e.printStackTrace();
		}

		if (param.equals("list")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/mysql.jsp");
			dispatcher.forward(request, response);
		} else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/form.jsp");
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);

		String nome = request.getParameter("nome");
		String rs = request.getParameter("rs");
		String email = request.getParameter("email");
		String cnpj = request.getParameter("cnpj");
		String id = request.getParameter("id");
		Integer code = null;
		if (id != "") {
			code = Integer.parseInt(id);
		} 

		Fornecedor fornecedor = new Fornecedor(code, email, nome, rs, cnpj);

		try {

			if (code == null) {
				boolean salvo = FornecedorDAO.salvar(fornecedor);
			} else {
				boolean atualizado = FornecedorDAO.update(fornecedor);
			}
			
			request.setAttribute("mensagem", "Dados inseridos/atualizados com sucesso");
			request.setAttribute("fornecedores", fornecedorDAO.getFornecedor());

			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/form.jsp");
			dispatcher.forward(request, response);

		} catch (SQLException | ClassNotFoundException e) {
			request.setAttribute("mensagem", "Falha na inserção de dados");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/paginas/form.jsp");
			dispatcher.forward(request, response);
		}
	}

}
