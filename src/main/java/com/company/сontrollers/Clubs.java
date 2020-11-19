package com.company.сontrollers;


import com.company.models.Club;
import com.company.util.ClubDB;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

@WebServlet(name = "Servlet1")
public class Clubs extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ClubDB clubDB = ClubDB.getInstance();

        Queue q = new LinkedList<Club>();
        List<Club> clubs1 = (List) q;

        PrintWriter out = response.getWriter();
        JSONArray list = new JSONArray();
        JSONObject obj = new JSONObject();
        String msg;

        String act = request.getParameter("act");
        switch (act){
            case "add":
                String name = request.getParameter("name");
                String img = request.getParameter("img");
                String description = request.getParameter("description");

                Club club = new Club();
                club.setName(name);
                club.setImg(img);
                club.setDescription(description);


                if(clubDB.addClubs(club)){
                    clubs1 = clubDB.getAllClubs();
                    request.setAttribute("clubs", clubs1);
                    request.getRequestDispatcher("jsp/clubs.jsp").forward(request,response);
                }else{
                    //writer.append("This name is already exists");
                    clubs1 = clubDB.getAllClubs();
                    request.setAttribute("clubs", clubs1);
                    msg="1";
                    request.setAttribute("msg", msg);
                    request.getRequestDispatcher("jsp/clubs.jsp").forward(request,response);
                }

                break;
            case "change":
                String name1 = request.getParameter("name");
                String img1 = request.getParameter("img");
                String description1 = request.getParameter("description");

                clubDB.update(name1, img1, description1);
                List<Club> clubs3 = clubDB.getAllClubs();
                request.setAttribute("clubs", clubs3);
                request.getRequestDispatcher("jsp/clubs.jsp").forward(request,response);

                break;
            case "remove":
                String name2 = request.getParameter("name");
                clubDB.remove(name2);
                List<Club> clubs2 = clubDB.getAllClubs();
                request.setAttribute("clubs", clubs2);
                request.getRequestDispatcher("jsp/clubs.jsp").forward(request, response);
                break;
            case "l":
                List<Club> clubs = clubDB.getAllClubs();
                request.setAttribute("clubs", clubs);
                request.getRequestDispatcher("jsp/clubs.jsp").forward(request,response);
                break;
        }

    }
}

