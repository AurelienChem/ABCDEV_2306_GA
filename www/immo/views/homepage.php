<?php

echo '<h1>Liste des biens immobiliers</h1>';



echo '<form  action="" method="POST"  >
				 <fieldset><legend>Rechercher un Bien immobilier</legend>
				 
				  <div class="form-group">
 <input type="hidden" name="lib_cat" value="" id="lib_cat" />
 
 <label for="dept">Choisir le département</label>';

echo '<select name="dep"  id="dep" class="form-control"  style=" max-width:300px"><option value="" selected="true">Choisissez votre département



</option> '; 
if(isset($data)) {
for($i = 0; $i < count($data); $i++) {
	echo "<option value=".$data[$i]["id_dep"].">".$data[$i]["nom_dep"]."</option>";
}
}



echo '</select>';
echo ' </div>
 <div class="form-group">
 
 <label for="budget">Montant budget maximum</label>
 	<span class="currencyinput">€
<input type="number"  step="10000" id="bugdet" name="budget" placeholder="Budget Max"  min="50000" max="900000000" />



</span>
</div>

<div class="form-group">
 <label for="nbpiece" >Nombre de pièces souhaitées:</label>';

echo '<select name="nbpieces"  id="nbre" class="form-control"  style=" max-width:300px"><option value=" " selected="true">Choisissez le nombre de pièce</option>';
if(isset($data2)) {
for($i = 0; $i < count($data2); $i++) {
	echo "<option value=".$data2[$i]["nbr_pieces"].">".$data2[$i]["nbr_pieces"]."</option>";
}
}

echo "</select></div>";

echo  '
         <div class="form-group form-button" id="btnsub" >				  
 <button type="submit" class="btn btn-primary" name="envoi">Submit</button>
	</div>
	</fieldset>
	 </form>';

//$categorie à definir en fonction de la catégorie de bien choisie dans le formulaire.       


//$rq= "select * from biens_immobiliers inner join categories on categories.id_categorie=biens_immobiliers.id_categorie  where lib_categorie=".$categorie; 









//<tr><th>titre</th><td>nbr_pieces</td><td>Part amortissement</td><td>Capital restant dû</td><td>Mensualité</td></tr>/
echo "<table  class='table table-striped' >";









echo "</table>";
?>