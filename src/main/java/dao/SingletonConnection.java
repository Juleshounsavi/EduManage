package dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;
import java.util.HashMap;
import java.util.Map;

public class SingletonConnection {
    private static EntityManager em;

    static {
        try {
            String dbPass = System.getenv("DB_PASSWORD");

            Map<String, String> properties = new HashMap<>();
            properties.put("jakarta.persistence.jdbc.password", dbPass);

            EntityManagerFactory emf = Persistence.createEntityManagerFactory("GestionScolairePU", properties);
            em = emf.createEntityManager();

            System.out.println("✅ Connexion réussie");
        } catch (Exception e) {
            System.err.println("❌ Erreur de connexion JPA:");
            e.printStackTrace();
        }
    }

    public static EntityManager getEntityManager() {
        return em;
    }
}