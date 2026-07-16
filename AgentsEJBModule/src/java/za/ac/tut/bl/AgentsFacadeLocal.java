/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package za.ac.tut.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.entities.Agents;

/**
 *
 * @author Xolani Msibi
 */
@Local
public interface AgentsFacadeLocal {

    void create(Agents agents);

    void edit(Agents agents);

    void remove(Agents agents);

    Agents find(Object id);

    List<Agents> findAll();

    List<Agents> findRange(int[] range);

    int count();
    
    List<Agents> getByGender(char gend);
    
    List<Agents> getByStatus(String status, char gender);
    
    List<Agents> getAgeByGender(Integer minAge, Integer maxAge, char gender);
    
    Agents oldestAgent();
    
}
