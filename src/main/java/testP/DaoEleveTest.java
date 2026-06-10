package testP;

import Metier.Eleve;
import dao.SingletonConnection;
import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class DaoEleveTest {

    @Test
    public void testAjouterEleve() {
        EntityManager em = SingletonConnection.getEntityManager();

        Eleve eleve = new Eleve();
        eleve.setNom("Naciri");
        eleve.setPrenom("Youssef");
        eleve.setMatricule("M9999");


        assertNotNull(eleve);
        assertEquals("Naciri", eleve.getNom());
    }
}