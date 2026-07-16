/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.annotation.security.RolesAllowed;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.entities.Agents;

/**
 *
 * @author Xolani Msibi
 */
@Stateless
public class AgentsFacade extends AbstractFacade<Agents> implements AgentsFacadeLocal {

    @PersistenceContext(unitName = "AgentsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public AgentsFacade() {
        super(Agents.class);
    }
    
    @RolesAllowed("admin")
    @Override
    public List<Agents> getByGender(char gend)
    {
        Query query = em.createQuery("SELECT a FROM Agents a WHERE a.gender = :gend");
        query.setParameter("gend", gend);
        List<Agents> list = query.getResultList();
        
        return list;
    }
    
    @RolesAllowed("admin")
    @Override
    public List<Agents> getByStatus(String status, char gender)
    {
        Query query = em.createQuery("SELECT a FROM Agents a WHERE a.gender = :gender AND a.MaritalStatus = :status");
        query.setParameter("status", status);
        query.setParameter("gender", gender);
        List<Agents> list = query.getResultList();
        
        return list;
    }
    
    @RolesAllowed("admin")
    @Override
    public List<Agents> getAgeByGender(Integer minAge, Integer maxAge, char gender)
    {
        Query query = em.createQuery("SELECT a FROM Agents a WHERE a.gender = :gender AND a.age >= :minAge AND a.age <= :maxAge");
        query.setParameter("minAge", minAge);
        query.setParameter("maxAge", maxAge);
        query.setParameter("gender", gender);
        List<Agents> list = query.getResultList();
        
        return list;
    }
    
    @RolesAllowed("admin")
    @Override
    public Agents oldestAgent()
    {
        Query query = em.createQuery("SELECT a FROM Agents a ORDER BY a.age DESC");
        query.setMaxResults(1);
        List<Agents> old = query.getResultList();
        
        Agents name = old.isEmpty() ? null: old.get(0);
        return name;
    }
}
