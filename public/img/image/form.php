<div class="contenitore scritta-griggia">
	<div id="cont1" class="contenuto">
	<form action="?submit" method="post">
		<div class="row">
			<div class="col-6">
                            <div class="col-6 titolo">
                                <?php 
                                $articoloTitolo="IL TUO PARERE CONTA";
                                $articoloSottotitolo="Lascia un messaggio e ti risponderemo a breve!";
                                include "varie/titolo.php";?>
                                </div>
			</div>
		</div>
				<!--<div class="avviso info">
				  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
				  E' importante notare che il sito è ancora in fase di sviluppo e che il presente modulo ha scopi puramente illustrativi e/o di prova.
				</div>-->
		<div class="row">
			<div class="col-3">
				<input type="text" name="nome" placeholder="*Nome" id="nome_form" value="ciua"></input>
			</div >
			<div class="col-3">
				<input type="text" name="cognome" placeholder="*Cognome" id="cognome_form"></input>
			</div>
		</div>
		<div class="row">
			<div class="col-3">
				<input type="text" name="data_nascita" placeholder="*Anno di Nascita" id="anno_nascita"></input>
			</div >
			<div class="col-3">
				<select name="sesso">
				  <option value="maschio">Maschio</option>
				  <option value="femmina">Femmina</option>
				</select>
			</div>
		</div>
		<div class="row">
			<div class="col-6">
				<input type="mail" name="email" id="email" placeholder="*E-mail"></input>
			</div >
		</div>
		<div class="row">
			<div class="col-6">
				<textarea name="message" id="message" placeholder="*Messaggio"></textarea>
			</div >
		</div>
		<div class="row">
			<div class="col-2" style="float:right">
				<input type="submit" value="SUBMIT" class="colore-medio">
			</div >
		</div>
		</form> 
	</div>
</div>