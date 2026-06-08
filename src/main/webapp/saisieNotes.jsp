<%@ page import="java.util.List" %>
<%@ page import="Metier.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
  Administrateur admin = (Administrateur) session.getAttribute("adminSession");
  if (admin == null) {
    response.sendRedirect("login.jsp");
    return;
  }

  List<Eleve> eleves = (List<Eleve>) request.getAttribute("eleves");
  List<Matiere> matieres = (List<Matiere>) request.getAttribute("matieres");
  List<Note> notes = (List<Note>) request.getAttribute("notes");
%>

<html>
<head>
  <title>Saisie des Notes | FST</title>
  <link rel="icon" href="${pageContext.request.contextPath}/favicon.ico">
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

  <style>
    :root { --fst-navy: #1e3a8a; --fst-orange: #ea580c; --fst-bg: #f8fafc; }
    body { font-family: 'Inter', sans-serif; background: var(--fst-bg); margin: 0; color: #1e293b; }

    .navbar {
      background: var(--fst-navy); padding: 0 40px; height: 70px;
      display: flex; align-items: center; justify-content: space-between;
      color: white; border-bottom: 5px solid var(--fst-orange);
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    }

    .container { max-width: 1100px; margin: 40px auto; padding: 0 20px; }

    .card {
      background: white; padding: 30px; border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.05);
    }

    .form-grid {
      display: grid;
      grid-template-columns: 1fr 1fr 120px auto;
      gap: 20px;
      align-items: flex-end;
    }

    label { font-size: 13px; font-weight: 600; color: #64748b; }

    select, input {
      width: 100%;
      padding: 12px;
      border: 2px solid #f1f5f9;
      border-radius: 8px;
    }

    .btn-submit {
      background: var(--fst-navy);
      color: white;
      border: none;
      padding: 12px 30px;
      border-radius: 8px;
      cursor: pointer;
    }

    #classeInfo {
      margin-top: 6px;
      font-size: 13px;
      color: #64748b;
    }

    .badge-note {
      background: #eff6ff;
      color: var(--fst-navy);
      padding: 5px 12px;
      border-radius: 6px;
      font-weight: 700;
    }
  </style>
</head>

<body>

<nav class="navbar">
  <div>FST | Académique</div>
  <div><i class="fas fa-user-circle"></i> <%= admin.getNom() %></div>
</nav>

<div class="container">

  <div class="card">

    <form action="notes" method="post" class="form-grid">

      <!-- ELEVE -->
      <div>
        <label>Étudiant</label>

        <select name="eleveId" id="eleveSelect" required>
          <option value="">Sélectionner un élève</option>

          <% if(eleves != null) {
            for(Eleve e : eleves) {

              String classe = (e.getClasse() != null)
                      ? e.getClasse().getNom()
                      : "Non assignée";
          %>

          <option value="<%= e.getId() %>" data-classe="<%= classe %>">
            <%= e.getNom().toUpperCase() %> <%= e.getPrenom() %>
          </option>

          <% } } %>

        </select>

        <div id="classeInfo"></div>
      </div>

      <!-- MATIERE -->
      <div>
        <label>Matière</label>
        <select name="matiereId" required>
          <option value="">Sélectionner la matière</option>

          <% if(matieres != null) {
            for(Matiere m : matieres) { %>

          <option value="<%= m.getId() %>">
            <%= m.getLibelle() %>
          </option>

          <% } } %>

        </select>
      </div>

      <!-- NOTE -->
      <div>
        <label>Note</label>
        <input type="number" name="valeur" step="0.25" min="0" max="20" required>
      </div>

      <button type="submit" class="btn-submit">
        <i class="fas fa-plus"></i> Enregistrer
      </button>

    </form>

  </div>

</div>

<!-- JS IMPORTANT -->
<script>
  document.addEventListener("DOMContentLoaded", function () {

    const select = document.getElementById("eleveSelect");
    const info = document.getElementById("classeInfo");

    if (!select) return;

    select.addEventListener("change", function () {

      const option = this.options[this.selectedIndex];
      const classe = option.getAttribute("data-classe");

      info.innerHTML = classe
              ? "Classe : <b>" + classe + "</b>"
              : "";
    });
  });
</script>

</body>
</html>