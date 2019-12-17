package by.epam.web;

import by.epam.dao.XmlReader;
import by.epam.exception.DataSourceException;
import by.epam.entity.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.xml.sax.SAXException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class MainPageServlet extends HttpServlet {

    private final static String xmlFile = "src/main/resources/data.xml";
    private static final Logger logger = LogManager.getLogger();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        logger.info("Application started...");
        try {
            XmlReader xmlReader = new XmlReader(xmlFile);
            List<User> users = xmlReader.getUsers();
            List<CreditCard> cards = xmlReader.getCards();
            List<Admin> admins = xmlReader.getAdmins();
            List<Account> accounts = xmlReader.getAccounts();
            List<Payment> payments = xmlReader.getPayments();
            req.setAttribute("users", users);
            req.setAttribute("cards", cards);
            req.setAttribute("admins", admins);
            req.setAttribute("accounts", accounts);
            req.setAttribute("payments", payments);
            logger.info("Success.");
            req.getRequestDispatcher("/WEB-INF/pages/main.jsp").forward(req, resp);
        } catch (SAXException | DataSourceException e) {
            e.printStackTrace();
        }
    }

}