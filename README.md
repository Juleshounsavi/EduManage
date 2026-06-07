# EduManage

Application web de gestion scolaire développée dans le cadre du module
**Java Avancée - Systèmes Distribuées** — Filière IDSI, Université Hassan II, FST Mohammedia 2025-2026.

---

## Présentation

EduManage permet à un administrateur scolaire de gérer les élèves, classes,
matières et notes, avec calcul automatique des moyennes et export des relevés en PDF.

## Démo en ligne

**URL** : https://edumanage-production-7063.up.railway.app/login

Identifiants par défaut : `admin@test.com` / `123`

## Fonctionnalités

- Gestion des élèves (ajout, modification, suppression, recherche)
- Gestion des classes et filières
- Saisie et gestion des notes par matière
- Calcul automatique des moyennes et classement
- Export des relevés de notes en PDF

## Stack technique

| Technologie | Rôle |
|-------------|------|
| Java 8 | Langage principal |
| Jakarta Servlet / JSP | Couche web (MVC) |
| JPA / Hibernate 7 | ORM et persistance |
| MySQL 8 | Base de données |
| Maven | Gestion des dépendances |
| JUnit 5 | Tests unitaires |
| Tomcat 10/11 | Serveur d'application |
| Docker | Conteneurisation |
| GitHub Actions | CI/CD automatisé |
| Railway | Hébergement cloud |

## Lancement avec Docker (recommandé)

**Prérequis** : Docker Desktop installé

```bash
# 1. Cloner le repo
git clone https://github.com/Juleshounsavi/EduManage.git
cd EduManage

# 2. Lancer l'app + MySQL
docker-compose up --build
```

Accéder à l'application : `http://localhost:8080/login`
Identifiants par défaut : `admin@test.com` / `123`

##  Lancement local (sans Docker)

**Prérequis** : Java 17+, Maven, MySQL 8, Tomcat 10

```bash
# 1. Cloner le repo
git clone https://github.com/Juleshounsavi/EduManage.git
cd EduManage

# 2. Définir la variable d'environnement
setx DB_PASSWORD "votre_mot_de_passe_mysql"

# 3. Builder et déployer via IntelliJ avec Tomcat
./mvnw clean package -DskipTests
```

Accéder à l'application : `http://localhost:8080/login`

## CI/CD

A chaque push sur `main`, GitHub Actions :
1. Compile le projet avec Maven
2. Lance les tests JUnit
3. Construit l'image Docker
4. Railway redéploie automatiquement

## Contributeurs

| Nom | Rôle |
|-----|------|
| HOUNSAVI Jules Koffi | Chef de projet |
| BAHLOUL Nizar | Développement Backend |
| SOULEIMANI Mohammed | Développement Frontend |
| ES-SKOURI Abderrahmane | Design Diagrammes |
| TAUIL Abdessamad | Design Diagrammes |

*Encadré par **Prof. SBAI Hanae***