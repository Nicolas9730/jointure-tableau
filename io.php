<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "filmes";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

print "<h3>Requête avec jointure </h3>";
$rq2 = mysqli_query($conn, "SELECT *
                            FROM livres
                            JOIN auteurs ON livres.Auteur_id = auteurs.ID_auteur");

echo "<table border='2'>
        <tr>
            <th>Titre</th>
            <th>Genre</th>
            <th>Nom de l'auteur</th>
            <th>Prénom de l'auteur</th>
        </tr>";


while ($rst2 = mysqli_fetch_assoc($rq2)) {
    print "<tr>";
    echo "<td>".$rst2['Titre']."</td>";
    echo "<td>".$rst2['Genre']."</td>"; 
    echo "<td>".$rst2['Nom']."</td>";  
    echo "<td>".$rst2['Prenom']."</td>";  
    print "</tr>";
}
print '</table>';

$conn->close();
?>







