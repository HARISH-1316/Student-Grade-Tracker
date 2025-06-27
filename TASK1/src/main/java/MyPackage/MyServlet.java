package MyPackage;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class MyServlet
 */
@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	
	Student St=new Student();
	
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action=request.getParameter("action");
		System.out.println(action);
		if("add".equals(action)) {
			
			int Stndid=Integer.parseInt(request.getParameter("studentid"));
			String Fname=request.getParameter("fullname");
			int Age=Integer.parseInt(request.getParameter("age"));
			String Gender=request.getParameter("gender");
			
			StringBuilder DOB=new StringBuilder(request.getParameter("dob"));
			
			
			
			
			double maths=Double.parseDouble(request.getParameter("maths"));
			double physics=Double.parseDouble(request.getParameter("physics"));
			double chemistry=Double.parseDouble(request.getParameter("chemistry"));
			double cs=Double.parseDouble(request.getParameter("cs"));
			double english=Double.parseDouble(request.getParameter("english"));
			String Submit=request.getParameter("submit");
			St.GradeSetter(Stndid,Fname,Age,Gender,DOB.toString(),maths,physics,chemistry,cs,english);
			response.sendRedirect("AddEnd.jsp");
		}
		else if("result".equals(action)) {
			int sid=Integer.parseInt(request.getParameter("sid"));
			StringBuilder DOB=new StringBuilder(request.getParameter("sdob"));
			
			ArrayList<String> Results=St.Results(sid);
			System.out.println(Results);
			if((DOB.toString()).equals(Results.get(3))) {
				StringBuilder A=new StringBuilder(DOB);
				System.out.println(A);
				DOB.delete(0,4);
				DOB.delete(4,6);
				DOB.append(A.charAt(0)+""+A.charAt(1)+""+A.charAt(2)+""+A.charAt(3));
				DOB.insert(0,A.charAt(A.length()-2)+""+A.charAt(A.length()-1));
				System.out.println(DOB);
				
				request.setAttribute("sid",Results.get(0));
				request.setAttribute("sname",Results.get(1));
				request.setAttribute("sgender",Results.get(2));
				request.setAttribute("sdob",DOB);
				request.setAttribute("sage",Results.get(4));
				
				request.setAttribute("smaths",Results.get(5));
				request.setAttribute("sphy",Results.get(6));
				request.setAttribute("schem",Results.get(7));
				
				request.setAttribute("scs",Results.get(8));
				request.setAttribute("seng",Results.get(9));
				request.setAttribute("sgmaths",Results.get(10));
				request.setAttribute("sgphy",Results.get(11));
				request.setAttribute("sgchem",Results.get(12));
				
				request.setAttribute("sgcs",Results.get(13));
				request.setAttribute("sgeng",Results.get(14));
				request.setAttribute("sresult",Results.get(15));
				request.getRequestDispatcher("ReadResults.jsp").forward(request,response);
			}
			else {
				response.sendRedirect("ReadNot.jsp");
				
			}
			
		}
		else if("admin".equals(action)) {
			String admin=request.getParameter("username");
			String password=request.getParameter("password");
			if("admin".equals(admin) && "root".equals(password)) {
				response.sendRedirect("Report.jsp");
			}
			else {
				response.sendRedirect("Admin.jsp");
			}
			
		}
		else if("report".equals(action)) {
			String Report=request.getParameter("report");
			if("StRep".equals(Report)) {
				int i=Integer.parseInt(request.getParameter("actionreport1"));
				int SID=St.SID(i);
				int SIZE=St.Size();
				System.out.println(i);
				System.out.println("********");
				ArrayList<String> Results=St.Results(SID);
				System.out.println(Results);
				StringBuilder DOB=new StringBuilder(Results.get(3));
				StringBuilder A=new StringBuilder(DOB);
				System.out.println(A);
				DOB.delete(0,4);
				DOB.delete(4,6);
				DOB.append(A.charAt(0)+""+A.charAt(1)+""+A.charAt(2)+""+A.charAt(3));
				DOB.insert(0,A.charAt(A.length()-2)+""+A.charAt(A.length()-1));
				System.out.println(DOB);
				
				request.setAttribute("sid",Results.get(0));
				request.setAttribute("sname",Results.get(1));
				request.setAttribute("sgender",Results.get(2));
				request.setAttribute("sdob",DOB);
				request.setAttribute("sage",Results.get(4));
				
				request.setAttribute("smaths",Results.get(5));
				request.setAttribute("sphy",Results.get(6));
				request.setAttribute("schem",Results.get(7));
				
				request.setAttribute("scs",Results.get(8));
				request.setAttribute("seng",Results.get(9));
				request.setAttribute("sgmaths",Results.get(10));
				request.setAttribute("sgphy",Results.get(11));
				request.setAttribute("sgchem",Results.get(12));
				
				request.setAttribute("sgcs",Results.get(13));
				request.setAttribute("sgeng",Results.get(14));
				request.setAttribute("sresult",Results.get(15));
				request.setAttribute("i",i);
				System.out.println(i);
				if(i==0) {
					System.out.println("111");
					request.getRequestDispatcher("ViewStudentReport1.jsp").forward(request,response);
				}
				else if(i==SIZE-1) {
					System.out.println("121");
					request.getRequestDispatcher("ViewStudentReportEnd.jsp").forward(request,response);
				}
				else {
					System.out.println("2111");
					request.getRequestDispatcher("ViewStudentReport.jsp").forward(request,response);
				}	
			}
			else if("SuRep".equals(Report)) {
				System.out.println("((((((");
				ArrayList<ArrayList> A=St.MMA();
				System.out.println(A);
				request.setAttribute("A", A);
				request.getRequestDispatcher("ViewSubjectReport.jsp").forward(request,response);
			}
			
		}
		
		
		
	}
	
}

