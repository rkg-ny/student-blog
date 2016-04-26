/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mypack;

import org.hibernate.cfg.Configuration;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.SessionFactory;
/**
 * Hibernate Utility class with a convenient method to get Session Factory
 * object.
 *
 * @author rohit
 */
public class Datainsert {

    public static int reg(Students s)
    {
        int i=0;
       // Session session=new Configuration().configure().buildSessionFactory().openSession();
      SessionFactory factory = new Configuration().configure().buildSessionFactory();
       	Session session = factory.openSession();
        Transaction t=session.beginTransaction();
        //t.begin();
        i=(Integer)session.save(s);
        t.commit();
        session.close();
        factory.close();
        return i;
    }
}
