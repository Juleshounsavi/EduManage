# EduManage

Application web de gestion scolaire développée dans le cadre du module
**Génie Logiciel & DevOps** — Filière IDSI, Université Hassan II, FST Mohammedia 2025-2026. 

---

## Présentation

EduManage permet à un administrateur scolaire de gérer les élèves, classes, 
matières et notes, avec calcul automatique des moyennes et export des relevés en PDF.

## Fonctionnalités

- Gestion des élèves (ajout, modification, suppression, recherche)
- Gestion des classes et filiières
- Saisie et gestion des notes par matière
- Calcul automatique des moyennes et classement
- Export des relevés de notes en PDF

## Stack technique

| Technologies |
|-------------|
| Java 8 |
| Jakarta |
| Servlets / JSP |
| JPA / Hibernate 7 |
| MySQL |
| Maven |
| JUnit 5 |
| Tomcat 11 |
| GitHub Actions |
| Docker |
## Lancement local

**Prérequis** : Java 8+, Maven 3.xx, MySQL 8.xx, Tomcat 11

```bash
# 1. Cloner le repo
git clone https://github.com/VOTRE_USERNAME/EduManage.git
cd EduManage

# 2. Configurer la base de données
cp src/main/resources/META-INF/persistence.xml.example \
   src/main/resources/META-INF/persistence.xml
# Editer persistence.xml avec vos identifiants MySQL

# 3. Compiler et déployer
mvn clean install
cp target/EduManage.war /chemin/vers/tomcat/webapps/
```

Accéder à l'application : `http://localhost:8080/EduManage`  
Identifiants par défaut : `admin@test.com` / `123`

## Contributeurs

| Nom | Rôle |
|---|---|
| HOUNSAVI Jules Koffi | Chef de projet |
| BAHLOUL Nizar | Développement Backend |
| SOULEIMANI Mohammed | Développement Frontend |
| ES-SKOURI Abderrahmane | Design Diagrammes |
| TAUIL Abdessamad | Design Diagrammes |

*Encadré par **Prof. SBAI Hanae***
