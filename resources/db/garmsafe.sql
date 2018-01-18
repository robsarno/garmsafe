-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 18, 2018 alle 16:12
-- Versione del server: 10.1.29-MariaDB
-- Versione PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garmsafe`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli`
--

CREATE TABLE `articoli` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sx` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli`
--

INSERT INTO `articoli` (`id`, `titolo`, `sottotitolo`, `descrizione`, `img`, `sx`) VALUES
(1, 'Chi Siamo', '', 'GarmSafe (Garment Safety Corp.) è un\'impresa incentrata nella produzione di indumenti biotecnologici.', 'chi-siamo.png', 0),
(2, 'Prodotti', '', 'L’offerta e le soluzioni proposte da GS sono strutturate per rivolgersi sia al singolo individuo disabile sia alla diffusione sul mercato ad associazioni.', 'prodotti.png', 0),
(3, 'Cosa facciamo', '', 'La mission di GarmSafe è quella di divenire la principale azienda del Nord Italia nella vendita di indumenti tecnologici studiati con particolare attenzione per persone con disabilità.', 'cosa-facciamo.png', 0),
(4, 'Territorio', '', 'Bergamo è una delle province Italiane più attive grazie ai suoi 242 comuni, costituisce quindi la prima provincia lombarda e la terza in tutto il paese.', 'territorio.png', 0),
(5, 'Statuto', '', 'Regoliamo la vita interna e il funzionamento della nostra società nel rispetto delle norme poste dal Codice Civile.', 'statuto.png', 0),
(6, 'Contatti', '', 'Siamo aperti a nuove idee e a conoscere i vostri interessi nell\' intento di migliorarci. Contattarci è facile e veloce.', 'contatti.png', 0),
(7, 'Innovazione', '', 'Il nostro prodotto fa uso di tecnologie moderne ed efficienti. Oltre ad utilizzare arduino, un microcontrollore moderno e open source, il nostro prodotto fa uso di altri componenti elettronici (sensori ad ultrasuoni, Vibration Motor ecc.).', 'innovazione.png', 0),
(8, 'Praticità', '', 'Per utilizzare il nostro prodotto basterà applicare le fascie elasticizzate sopra i vestiti della persona ipovedente. Grazie al design e alla cucitura ergonomica, la fascia BlindStrip si adatta facilmente al corpo della persona in questione.', 'praticita.png', 0),
(9, 'Efficienza', '', 'Il nostro dispositivo permette di rilevare gli ostacoli nel raggio di circa 2 metri davanti all’utente, avvertendolo con una vibrazione emessa da un apposito motore installato su di esso.', 'efficienza.png', 0),
(10, 'BLINDSTRIP', 'Il sogno è quello di eliminare il bastone', 'l nostro prodotto principale sarà Blindstrip, una fascia elastica adattabile al corpo della persona che, grazie a un apposito sensore a ultrasuoni, permette di rilevare gli ostacoli nel raggio di circa 2 metri davanti all’utente, avvertendolo con una vibrazione emessa da un apposito motore installato su di essa. In base alla distanza degli oggetti la potenza di vibrazione cambierà: più la distanza sarà minore, più la vibrazione sarà intermittente. Il tutto sarà controllato dal microcontrollore Arduino nano.', 'art1-prodotti.png', 1),
(11, 'HC-SR04', 'L\'elemento al centro del progetto', 'Il sensore ad ultrasuoni HC-SR04 emette delle onde sonore e ne misura il tempo dopo aver incontrato un ostacolo che lo riflette. Il fascio di onde sonore è, in questo caso, di forma conica sia quando viene emesso dalla sorgente sia quando viene riflesso al primo ostacolo; questo fa si che il sensore riceva molte riflessioni da diversi oggetti e ciò rende il sensore, se solo, incapace di distinguere i tipi di oggetto od oggetti troppo piccoli. HC-SR04 dispone di 4 pin che sono: Vcc(+5v), Trigger, Echo e GND. Si invia un impulso alto sul Trigger per almeno 10 secondi dove successivamente il sensore invierà l’onda sonora aspettando così il suo ritorno gestito dal pin Echo. Dopo 38 millisecondi si considera che le onde non abbiano avuto alcun ostacolo quindi vengono attesi altri ms di sicurezza (in genere fino ai 50-60ms ) per evitare interferenze con la successiva misurazione.', 'art2-prodotti.jpg', 0),
(12, 'BENVENUTI IN LOMBARDIA', 'Una delle regioni più attive in Italia', 'Trezzo sull\'Adda è un comune italiano di 12.178 abitanti situato all\'estremità orientale della provincia di Milano, in Lombardia. L\'origine del nome \'Trezzo sull\'Adda\' non è nota anche se esistono diverse teorie al riguardo; la più diffusa vuole che Trezzo derivi da Trecc, termine germanico per promontorio. Il nome è probabilmente dovuto alla posizione strategica in cui si trova la città antica rispetto al fiume, su un promontorio. La città è localizzata sul confine tra la provincia di Bergamo e di Milano,in una zona favorevole dal punto di vista logistico grazie alla vicinanza con l’autostrada.', 'art1-territorio.png', 1),
(13, 'PER CHI HA BISOGNO', 'In Italia il numero è in crescita', 'Nel contesto sociale italiano possiamo notare come il numero degli individui che presentano una disabilità di qualsiasi tipo sia in aumento durante il corso degli anni; le percentuali espongono questo dato in modo chiaro e netto, infatti le stime del Censis (Centro Studi Investimenti Sociali) riguardo gli invalidi sono le seguenti: 4,8 milioni entro il 2020 (7,9% della popolazione italiana); 6,7 milioni entro il 2040 (10,7% della popolazione italiana). Possiamo dunque notare come le statistiche indichino che il numero di questi soggetti sia in aumento: da ciò si può dedurre che sempre più persone in futuro avranno bisogno di uno strumento che permetta loro di muoversi in libertà e sicurezza in qualsiasi tipo di ambiente.', 'art2-territorio.png', 0);

-- --------------------------------------------------------

--
-- Struttura della tabella `articoli_pagine`
--

CREATE TABLE `articoli_pagine` (
  `id_pagina` int(10) UNSIGNED NOT NULL,
  `id_articolo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `articoli_pagine`
--

INSERT INTO `articoli_pagine` (`id_pagina`, `id_articolo`) VALUES
(2, 10),
(2, 11),
(4, 12),
(4, 13);

-- --------------------------------------------------------

--
-- Struttura della tabella `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_01_16_150311_create_pagine_table', 1),
(4, '2018_01_16_150518_create_articoli_table', 1),
(5, '2018_01_16_150752_create_articoli_pagine_table', 1),
(6, '2018_01_16_152046_create_tab3_table', 1),
(7, '2018_01_16_152541_create_tab3_articoli_table', 1),
(8, '2018_01_18_101803_create_noi_table', 1),
(9, '2018_01_18_104652_create_titolo_table', 1),
(10, '2018_01_18_111924_create_statuto_table', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `noi`
--

CREATE TABLE `noi` (
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cognome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_nascita` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ruolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `noi`
--

INSERT INTO `noi` (`nome`, `cognome`, `data_nascita`, `ruolo`, `img`) VALUES
('Amin', 'Khayam', '1999', 'Amministrazione e Marketing', 'Amin_Khayamfoto.png'),
('Arianna', 'Pasta', '1999', 'web designer', 'Arianna_Pastafoto.jpg'),
('Diego', 'Martignoni', '2000', 'Amministrazione e Marketing', 'Diego_Martignonifoto.jpg'),
('Giorgio', 'Carozzi', '1999', 'sviluppatore', 'Giorgio_Carozzifoto.jpg'),
('Jonathan', 'Pina', '1999', 'contabile', 'Jonathan_Pinnafoto.jpg'),
('Karol', 'Ortiz', '1998', 'coordinatore', 'Karol_Ortizfoto.jpg'),
('Leonardo', 'Zambrano', '1999', 'web designer', 'Zambrano_Franciscofoto.jpg'),
('Michele', 'Maestroni', '1999', 'sviluppatore', 'Michele_Maestronifoto.png'),
('Mihael', 'Melnic', '1998', 'web designer', 'Mihael_Melnicfoto.jpg'),
('Nicolo\'', 'Plebani', '1999', 'sviluppatore', 'Nicolò_Plebanifoto.jpg'),
('Nusrat Akhi', 'Islam', '1998', 'sviluppatore', 'Nusrat Akhi_Islamfoto.jpg'),
('Paolo', 'Mazzoleni', '1999', 'Amministrazione e Marketing', 'Paolo_Mazzolenifoto.png'),
('Riccardo', 'Belingheri', '1999', 'sviluppatore', 'Riccardo_Belingherifoto.jpg'),
('Roberto', 'Arnoldi', '1999', 'Graphic designer', 'Roberto_Arnoldifoto.jpg'),
('Roberto', 'Patti', '1998', 'sviluppatore', 'Roberto_Pattifoto.png'),
('Simone', 'Mazzoleni', '1999', 'Amministrazione e Marketing', 'Simone_Mazzolenifoto.jpg'),
('Stefano', 'Ghislandi', '1999', 'graphic designer', 'Stefano_Ghislandifoto.jpg'),
('Tanakon', 'Thumchan', '1998', 'sviluppatore', 'Tanakon_Thumchanfoto.jpg'),
('Yulia', 'Puhachova', '1997', 'Amministrazione e Marketing', 'Yulia_Puhachovafoto.png');

-- --------------------------------------------------------

--
-- Struttura della tabella `pagine`
--

CREATE TABLE `pagine` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `pagine`
--

INSERT INTO `pagine` (`id`, `titolo`, `descrizione`, `url`, `created_at`, `updated_at`) VALUES
(1, 'GarmSafe', 'Your Safety, our responsibility!', 'home', NULL, NULL),
(2, 'Prodotti', 'BlindStrip - un progetto pronto a rivoluzionare il modo di vivere le disabilità visive!', 'prodotti', NULL, NULL),
(3, 'Chi siamo', 'Il nostro team è composto da giovani ragazzi che si sono messi in gioco per creare un progetto rivoluzionario.', 'chi-siamo', NULL, NULL),
(4, 'Territorio', 'Dove è nata la nostra azienda e perchè è nata proprio in questa magnifica regione.', 'territorio', NULL, NULL),
(5, 'Statuto', 'GarmSafe e la legge. Come viene regolata la vita interna ed il funzionamento della nostra azienda.', 'statuto', NULL, NULL),
(6, 'Contatti', 'Interessato al prodotto o semplice voglia di sapere cosa ci sta dietro? Contattaci!', 'contatti', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struttura della tabella `statuto`
--

CREATE TABLE `statuto` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descrizione` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_titolo` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `statuto`
--

INSERT INTO `statuto` (`id`, `titolo`, `descrizione`, `id_titolo`) VALUES
(1, 'Articolo 1 - Denominazione', 'E\' costituita la società a responsabilità limitata denominata: \"GarmSafe s.r.l.\".', 1),
(2, 'Articolo 2 - Sede sociale e domicilio dei soci', 'La società ha sede nel Comune di Trezzo sull\'Adda, allindirizzo Via Lombardia, 34. E\' facoltà dell\'organo amministrativo istituire filiali, succursali o altre unità locali operative ovvero trasferire la sede sociale nellambito del citato Comune. L\'istituzione di sedi secondarie e il trasferimento della sede sociale in un Comune diverso spettano ai soci. Il domicilio dei soci, per tutti i rapporti con la società, si intende a tutti gli effetti quello risultante dal libro soci; è onere del socio comunicare il cambiamento del proprio domicilio. In mancanza dell\'indicazione del domicilio nel libro dei soci si fa riferimento alla residenza anagrafica.', 1),
(3, 'Articolo 3 - Oggetto sociale', 'La società ha per oggetto: la fabbricazione e vendita di protesi ortopediche, altre protesi ed ausili. La società può assumere e concedere agenzie, commissioni, rappresentanze e mandati, nonché compiere tutte le operazioni commerciali (anche di import-export), finanziarie, mobiliari ed immobiliari, necessarie o utili per il raggiungimento degli scopi sociali. La società può altresì assumere partecipazioni in altre società o imprese di qualunque natura aventi oggetto analogo, affine o connesso al proprio, rilasciare fideiussioni e altre garanzie in genere, anche reali. Tutte tali attività potranno essere svolte in via non esclusiva o prevalente, non nei confronti del pubblico e nel rispetto delle vigenti norme di legge in materia di attività riservate, in particolare viene esclusa ogni attività che rientri nelle prerogative che necessitino dell\'iscrizione ad Albi professionali, Collegi e Ordini e ogni attività finanziaria vietata dalla legge, per tempo vigente, in materia ed in particolare ai sensi di quanto disposto dall\'art. 113 del D.L 1 settembre 1993 n. 385. La società si inibisce l\'attività di raccolta di risparmio tra il pubblico e le attività previste dal D.L. 415/96.', 1),
(4, 'Articolo 4 - Durata della società', 'La durata della società è stabilita fino al 31/12/2099. Il socio che intende recedere dalla società ai sensi dell\'articolo 2473, comma 2, del codice civile, deve comunicare la dichiarazione di recesso con un preavviso di un anno.', 1),
(5, 'Articolo 5 - Capitale Sociale', 'Il capitale sociale è di euro 10.000 ed è diviso in quote ai sensi dell\'articolo 2468 del codice civile. Ogni quota deve essere di valore nominale pari ad € 1 (un euro) o a un suo multiplo; qualora la quota divenga per qualsiasi causa espressa in decimali di euro, si fa luogo all’arrotondamento all\'unità superiore o inferiore di euro a seconda che, rispettivamente, il valore da arrotondare sia superiore o inferiore ai cinquanta centesimi di euro; a tale arrotondamento non si fa luogo ove esso incida sul computo delle maggioranze oppure ove comunque sfavorisca sostanzialmente un soggetto rispetto all’altro. L’ammontare minimo del capitale è di 10.000 euro. Le quote possono essere espresse anche in decimali di euro.', 2),
(6, 'Articolo 6 - Finanziamento dei soci alla società', 'I finanziamenti con diritto a restituzione della somma versata possono essere effettuati dai soci, anche non in proporzione alle rispettive quote di partecipazione al capitale sociale, con le modalità e i limiti di cui alla normativa vigente in materia fiscale e di raccolta del risparmio.', 2),
(7, 'Articolo 7 - Quote di partecipazione al capitale s', 'Le partecipazioni dei soci sono determinate in misura proporzionale al conferimento. Le quote di partecipazione al capitale sociale possono essere assegnate ai soci in misura non proporzionale ai conferimenti da essi effettuati nel capitale sociale. I diritti sociali spettano ai soci in misura proporzionale alla partecipazione da ciascuno posseduta. E\' consentita l\'attribuzione a singoli soci di \"particolari dirittI\" relativi all\'amministrazione della società o alla distribuzione degli utili; salvo il disposto dell\'articolo 2473, comma 1, i particolari diritti attribuiti a singoli soci possono essere modificati solo con decisione unanime dei soci.', 2),
(8, 'Articolo 8 - Trasferimento delle quote di partecip', 'In caso di trasferimento di quote di partecipazione al capitale sociale e dei diritti di sottoscrizione e di prelazione, per atto tra vivi, spetta agli altri soci il diritto di prelazione, precisandosi che: a) per \"trasferimento\" si intende qualsiasi negozio, a titolo oneroso o gratuito, concernente o la piena proprietà o la nuda proprietà o l’usufrutto di dette quote o diritti (ivi compresi, in via esemplificativa, la compravendita, la donazione, la permuta, il conferimento in società, la costituzione di rendita, la dazione in pagamento, la cessione \"in blocco\", \"forzata\" o \"coattiva\", il trasferimento che intervenga nell\'ambito di cessione o conferimento d\'azienda, fusione e scissione), in forza del quale si consegua, in via diretta o indiretta, il risultato del mutamento di titolarità di detti quote o diritti; b) in caso di costituzione del diritto di pegno, il diritto di voto deve permanere in capo al datore di pegno che è obbligato pertanto a mantenerlo in capo a sé e non può trasferirlo al soggetto che riceve il pegno, al quale la società non riconosce il diritto di voto; c) il diritto di prelazione compete agli altri soci anche nel caso in cui venga ceduta la partecipazione di controllo della società socia della presente società o avvenga un qualsiasi altro mutamento in detta partecipazione di controllo (come ad esempio per effetto di fusione, scissione, conferimento) che determini il subentro di un nuovo soggetto nella titolarità di detto controllo; in tal caso, l’organo amministrativo della società socia (o suoi aventi causa) è obbligato ad offrire agli altri soci della presente società l’acquisto delle quote o dei diritti di sua titolarità della presente società entro 60 giorni dal giorno in cui sono avvenuti la cessione o i mutamenti di cui sopra; in caso di inadempimento di quest’obbligo di offerta, la società socia (o suoi aventi causa) è obbligata al pagamento di una penale pari al doppio del valore della quota o dei diritti di cui avrebbe dovuto esser fatta offerta. E’ escluso il diritto di prelazione nei trasferimenti che avvengano a favore di altri soci, nonché del coniuge, dei parenti dell’alienante entro il terzo grado e dei suoi affini entro il secondo grado. E\' pure escluso il diritto di prelazione nel caso di trasferimenti tra fiduciante e società fiduciaria e viceversa, ove la società fiduciaria esibisca la scritturazione del proprio registro delle intestazioni fiduciarie dalla quale risulti il mandato fiduciario ed accetti espressamente l\'osservanza delle norme statutarie in tema di diritto di prelazione; è invece soggetta a prelazione la sostituzione del fiduciante senza sostituzione della società fiduciaria. Il diritto di prelazione non può esercitarsi parzialmente e cioè deve esercitarsi solo per l’intero oggetto dei negozi traslativi di cui al primo comma. Nel caso di proposta di vendita congiunta da parte di più soci, il diritto di prelazione degli altri soci non deve necessariamente avere ad oggetto il complesso della proposta congiunta ma può riguardare solo le quote o i diritti di ciascuno dei proponenti. Se sussiste concorso tra più richiedenti, ciascuno di essi effettua l’acquisto per un valore proporzionale alla quota di partecipazione al capitale sociale già di propria titolarità e quindi si accresce in capo a chi esercita la prelazione il diritto di prelazione che altri soci non esercitino; chi esercita la prelazione può tuttavia, all’atto dell’esercizio del diritto di prelazione, dichiarare di non voler beneficiare di detto accrescimento; e se, per effetto di detta rinuncia all’ accrescimento, quanto è oggetto della proposta di trasferimento non sia per intero prelazionato, si rientra nella previsione del primo periodo del comma precedente. Il socio (d\'ora innanzi \"proponente\") che intende effettuare il trasferimento (d\'ora innanzi \"la proposta\") mediante atto a titolo oneroso e con corrispettivo fungibile, deve prima farne offerta, alle stesse condizioni, agli altri soci tramite l’organo amministrativo, al quale deve comunicare l’entità di quanto è oggetto di trasferimento, il prezzo richiesto, le condizioni di pagamento, le esatte generalità del terzo potenziale acquirente e i termini temporali di stipula dell’atto traslativo. Entro il termine di 15 (quindici) giorni dalla data di ricevimento della predetta comunicazione, l’organo amministrativo deve dare notizia della proposta di alienazione a tutti i soci iscritti nel libro dei soci alla predetta data, assegnando agli stessi un termine di 20 (venti) giorni, dal ricevimento della comunicazione, per l’esercizio del diritto di prelazione. Entro quest’ultimo termine, i soci, a pena di decadenza, devono comunicare al proponente e all’organo amministrativo la propria volontà di esercitare la prelazione; il ricevimento di tale comunicazione da parte dell’organo amministrativo costituisce il momento di perfezionamento del negozio traslativo, e cioè intendendosi la proposta del proponente una proposta contrattuale ai sensi dell’articolo 1326 codice civile e l’organo amministrativo il domiciliatario del proponente medesimo per le comunicazioni inerenti l’accettazione di detta proposta. Qualora il prezzo proposto dal proponente sia ritenuto eccessivo da alcuno degli altri soci, questi può nominare un proprio arbitratore (dando di ciò notizia all’organo amministrativo entro il termine di 20 - venti - giorni dal ricevimento della notizia della proposta di alienazione); nel medesimo termine anche il proponente deve essere invitato a procedere alla nomina del proprio arbitratore. I due arbitratori così nominati a loro volta scelgono un terzo arbitratore, con funzioni di presidente; in caso di mancata nomina dell’arbitratore da parte dei soggetti che vi sono tenuti, la nomina è effettuata dal Presidente del Tribunale ove la società ha la propria sede legale. Il collegio di arbitraggio, che deve giudicare con \"equo apprezzamento\", è nominato per determinare il prezzo di quanto è oggetto del proposto negozio traslativo; tale prezzo va determinato con riferimento esclusivo al valore effettivo della società alla data in cui l’organo amministrativo ha ricevuto la proposta del proponente l\'alienazione. La decisione del collegio di arbitraggio circa l’ammontare del corrispettivo di quanto è oggetto del proposto negozio traslativo deve essere notificata all’organo amministrativo e al proponente (l’avviso di ricevimento della raccomandata spedita a quest’ultimo deve essere recapitato, per conoscenza, all’organo amministrativo della società, per i fini di cui oltre, una volta che esso sia ritornato al mittente collegio di arbitraggio), precisandosi che: a) ove il prezzo proposto dal proponente sia maggiore del valore stabilito dal collegio di arbitraggio, la proposta si intende fatta per il prezzo pari al valore stabilito dal collegio di arbitraggio; b) ove il prezzo proposto dal proponente sia minore del valore stabilito dal collegio di arbitraggio, la proposta si intende fatta per il prezzo proposto dal proponente. Il proponente, ricevuta la comunicazione della decisione del collegio di arbitraggio, può decidere di revocare la propria proposta. Nel caso in cui intenda revocare tale proposta, egli deve darne comunicazione all’organo amministrativo della società entro il termine di 15 (quindici) giorni dal giorno di ricevimento della anzidetta comunicazione da parte del collegio di arbitraggio, a pena di decadenza dalla facoltà di revoca.', 2),
(9, 'Articolo 9 - Clausola di consolidazione nel caso d', 'In caso di morte di un socio, i soci superstiti possono, con decisione unanime oppure con decisione presa con il voto favorevole dei soci che rappresentino i 2/3 (o altra percentuale del capitale sociale), che deve essere adottata (ad esempio) entro 60 (sessanta) giorni dal decesso del socio, stabilire che la quota di partecipazione al capitale sociale e i diritti di sottoscrizione e di prelazione si accrescano automaticamente agli altri soci, i quali, in tal caso, devono liquidare agli eredi del socio defunto il valore della quota già spettante al defunto stesso, determinato con le stesse modalità prescritte per la valutazione della quota di partecipazione del socio recedente. Il diritto di recesso previsto dall’articolo 2473 del codice civile può essere esercitato solo decorsi 24 mesi dalla costituzione della società o dalla sottoscrizione della partecipazione. Nel caso di subentro di più eredi o legatari nella quota del defunto, costoro nominano un rappresentante comune e si applicano gli articoli 1105 e 1106 del codice civile.', 2),
(10, 'Articolo 10 - Recesso del socio', 'Il diritto di recesso compete al socio che non ha consentito al cambiamento dell\'oggetto sociale o del tipo di società, alla fusione o scissione della società, alla revoca dello stato di liquidazione, al trasferimento della sede all\'estero, alla eliminazione di una o più cause di recesso previste dall\'atto costitutivo, al compimento di operazioni che comportino una sostanziale modificazione dell\'oggetto della società determinato nell\'atto costitutivo o una rilevante modificazione dei diritti attribuiti ai soci a norma dell\'art. 2468, quarto comma, c.c. ed in tutti gli altri casi previsti dalla legge e dal presente statuto. Il socio che intende recedere deve comunicare la sua intenzione all\'organo amministrativo mediante lettera raccomandata spedita entro 15 giorni dall\'iscrizione nel Registro delle Imprese della decisione che lo legittima o dalla trascrizione della decisione nel libro dei soci o degli amministratori oppure dalla conoscenza del fatto che legittima il recesso del socio. A tal fine l’organo amministrativo deve tempestivamente comunicare ai soci i fatti che possono dar luogo per i soci stessi al diritto di recesso. segue In detta raccomandata devono essere elencati: a )le generalità del socio recedente; b)il domicilio eletto dal recedente per le comunicazioni inerenti al procedimento; c)il valore nominale delle quote di partecipazione al capitale sociale per le quali il diritto di recesso viene esercitato. Il recesso si intende esercitato nel giorno in cui la lettera raccomandata giunge all’indirizzo della sede legale della società. Le partecipazioni per le quali è effettuato il diritto di recesso sono inalienabili. opzionale aggiungere eventuali criteri di valorizzazione delle quote del recedente, tenendo conto che: a) l\'articolo 2473, comma 3 afferma: << I soci che recedono dalla società hanno diritto di ottenere il rimborso della propria partecipazione in proporzione del patrimonio sociale. Esso a tal fine è determinato tenendo conto del suo valore di mercato al momento della dichiarazione di recesso; in caso di disaccordo la determinazione è compiuta tramite relazione giurata di un esperto nominato dal tribunale, che provvede anche sulle spese, su istanza della parte più diligente; si applica in tal caso il primo comma dell’articolo 1349>>. b) Lo statuto può stabilire criteri diversi di determinazione del valore di liquidazione, indicando gli elementi dell’attivo e del passivo del bilancio che possono essere rettificati rispetto ai valori risultanti dal bilancio, unitamente ai criteri di rettifica, nonché altri elementi suscettibili di valutazione patrimoniale da tenere in considerazione. c) I soci hanno diritto a conoscere la determinazione del valore di cui al secondo comma del presente articolo nei quindici giorni precedenti alla data fissata per l’assemblea; ciascun socio ha diritto di prenderne visione e di ottenerne copia a proprie spese. d) In caso di contestazione da proporre contestualmente alla dichiarazione di recesso il valore di liquidazione è determinato entro novanta giorni dall’esercizio del diritto di recesso tramite relazione giurata di un esperto nominato dal tribunale, che provvede anche sulle spese, su istanza della parte più diligente; si applica in tal caso il primo comma dell’articolo 1349>>. Ricevuta la dichiarazione scritta di recesso e determinato il valore di liquidazione della partecipazione, gli amministratori devono darne notizia senza indugio agli altri soci fissando loro un termine congruo, ma in ogni caso non superiore a giorni quindici, per manifestare la propria disponibilità, mediante raccomandata A/R spedita alla società, ad acquistare la quota di partecipazione del socio receduto ex art. 2473 c.c., o, eventualmente, per individuare concordemente un terzo acquirente.', 2),
(11, 'Articolo 11 - Esclusione del socio', 'L\'esclusione del socio è decisa dall\'assemblea dei soci con il voto favorevole degli stessi che rappresentino il 67 per cento del capitale sociale, non computandosi la quota di partecipazione del socio della cui esclusione si tratta.', 2),
(12, 'Articolo 12 - Decisioni dei soci - competenze', 'Ai sensi dell’art. 2463, n. 7) e dell’articolo 2479 del codice civile sono di competenza dei soci: a) gli argomenti ad essi riservati ai sensi dell\'art. 2479 del c.c.; b) le decisioni sugli argomenti che uno o più amministratori sottopongono alla loro approvazione; c) le decisioni sugli argomenti per i quali i soci che rappresentano un terzo del capitale sociale richiedano l\'adozione di una decisione dei soci;', 3),
(13, 'Articolo 13 - Decisioni dei soci - modalità', 'Metodo assembleare esclusivo: Le decisioni dei soci sono sempre adottate mediante deliberazione assembleare assunta ai sensi dell\'articolo 2479 bis del codice civile e di quanto disposto dal presente statuto.', 3),
(14, 'Articolo 14 – Assemblea dei soci - convocazioni', 'L’assemblea è convocata mediante avviso spedito ai soci e da essi ricevuto almeno 8 giorni prima del giorno fissato per l\'assemblea. L\'avviso può essere redatto su qualsiasi supporto (cartaceo o magnetico) e può essere spedito con qualsiasi sistema di comunicazione (compresi il telefax e la posta elettronica). Alternativo: Le assemblee, saranno convocate, dall\'Amministratore Unico o dagli amministratori ogni qualvolta lo reputino opportuno, alternativamente a loro scelta con uno dei seguenti mezzi da inviarsi almeno otto giorni prima di quello fissato per l\'adunanza: - a mezzo lettera raccomandata, spedita ai soci al domicilio risultante dal libro dei soci; - a mezzo posta elettronica con avviso da inviarsi all\'indirizzo di posta elettronica notificato alla società ed annotato nel libro soci. A tale fine il presidente dell\'assemblea verificherà mediante elenco fornitogli dal fornitore di accessi Internet (Provider) che tutti i soci abbiano ricevuto l\'avviso; - a mezzo fax da inviarsi al numero di fax notificato alla società ed annotato nel libro soci.', 3),
(15, 'Articolo 15 - Assemblea dei soci - luogo di convoc', 'L\'assemblea può essere convocata sia presso la sede sociale sia altrove, purchè in Italia.', 3),
(16, 'Articolo 16 - Assemblea dei soci - rappresentanza', 'Rappresentanza dei soci La rappresentanza in assemblea deve essere conferita con delega scritta, consegnata al delegato anche via telefax o via posta elettronica con firma digitale', 3),
(17, 'Articolo 17 - Assemblea dei soci - presidenza', 'La presidenza dell’assemblea spetta al presidente del consiglio di amministrazione oppure, in mancanza, da quella designata dai soci a maggioranza semplice del capitale presente. Il presidente dell’assemblea è assistito da un segretario designato dall’assemblea a maggioranza semplice del capitale presente. Ove prescritto dalla legge e pure in ogni caso l\'organo amministrativo lo ritenga opportuno, le funzioni di segretario sono attribuite ad un notaio designato dall\'organo amministrativo medesimo. Il presidente dell\'assemblea verifica la regolarità della costituzione dell’assemblea, accerta l’identità e la legittimazione dei presenti, regola il suo svolgimento ed accerta i risultati delle votazioni.', 3),
(18, 'Articolo 18 - Assemblea dei soci - intervento in a', 'Possono intervenire all’assemblea tutti coloro che risultano iscritti nel libro dei soci. L\'assemblea può svolgersi anche con gli intervenuti dislocati in più luoghi, contigui o distanti, audio e video collegati, a condizione che siano rispettati il metodo collegiale e i principi di buona fede e di parità di trattamento dei soci. In tal caso, è necessario che: a) sia consentito al presidente dell\'assemblea, anche a mezzo del proprio ufficio di presidenza, di accertare inequivocabilmente l\'identità e la legittimazione degli intervenuti, regolare lo svolgimento dell\'adunanza, constatare e proclamare i risultati della votazione; b) sia consentito al soggetto verbalizzante di percepire adeguatamente gli eventi assembleari oggetto di verbalizzazione; c) sia consentito agli intervenuti di partecipare in tempo reale alla discussione e alla votazione simultanea sugli argomenti all\'ordine del giorno; d)ove non si tratti di assemblea totalitaria, vengano indicati nell\'avviso di convocazione i luoghi audio/video collegati a cura della società, nei quali gli intervenuti potranno affluire, dovendosi ritenere svolta la riunione nel luogo ove saranno presenti il presidente e il soggetto verbalizzante.', 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `tab3`
--

CREATE TABLE `tab3` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_pagina` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tab3`
--

INSERT INTO `tab3` (`id`, `titolo`, `sottotitolo`, `id_pagina`) VALUES
(1, '', '', 1),
(2, '', '', 1),
(3, 'UNA RIVOLUZIONE CHE PARTE DAL BASSO', 'Innovazione, praticità ed efficienza - il mix perfetto', 2);

-- --------------------------------------------------------

--
-- Struttura della tabella `tab3_articoli`
--

CREATE TABLE `tab3_articoli` (
  `id_tab3` int(10) UNSIGNED NOT NULL,
  `id_articolo` int(10) UNSIGNED NOT NULL,
  `img_hover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `tab3_articoli`
--

INSERT INTO `tab3_articoli` (`id_tab3`, `id_articolo`, `img_hover`, `link`) VALUES
(1, 1, 'chi-siamo.gif', 'chi-siamo'),
(1, 2, 'prodotti.gif', 'prodotti'),
(1, 3, 'cosa-facciamo.gif', NULL),
(2, 4, 'territorio.gif', 'territorio'),
(2, 5, 'statuto.gif', 'statuto'),
(2, 6, 'contatti.gif', 'contatti'),
(3, 7, '', NULL),
(3, 8, '', NULL),
(3, 9, '', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `titolo`
--

CREATE TABLE `titolo` (
  `id` int(10) UNSIGNED NOT NULL,
  `titolo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sottotitolo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dump dei dati per la tabella `titolo`
--

INSERT INTO `titolo` (`id`, `titolo`, `sottotitolo`, `created_at`, `updated_at`) VALUES
(1, 'TITOLO I', 'DENOMINAZIONE, SEDE, OGGETTO, DURATA', NULL, NULL),
(2, 'TITOLO II', 'CAPITALE SOCIALE E FINANZIAMENTI DEI SOCI', NULL, NULL),
(3, 'TITOLO III', 'DECISIONI E ASSEMBLEA DEI SOCI', NULL, NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `articoli`
--
ALTER TABLE `articoli`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `articoli_pagine`
--
ALTER TABLE `articoli_pagine`
  ADD PRIMARY KEY (`id_pagina`,`id_articolo`),
  ADD KEY `articoli_pagine_id_articolo_foreign` (`id_articolo`);

--
-- Indici per le tabelle `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `noi`
--
ALTER TABLE `noi`
  ADD PRIMARY KEY (`nome`,`cognome`);

--
-- Indici per le tabelle `pagine`
--
ALTER TABLE `pagine`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indici per le tabelle `statuto`
--
ALTER TABLE `statuto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuto_id_titolo_foreign` (`id_titolo`);

--
-- Indici per le tabelle `tab3`
--
ALTER TABLE `tab3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tab3_id_pagina_foreign` (`id_pagina`);

--
-- Indici per le tabelle `tab3_articoli`
--
ALTER TABLE `tab3_articoli`
  ADD PRIMARY KEY (`id_tab3`,`id_articolo`),
  ADD KEY `tab3_articoli_id_articolo_foreign` (`id_articolo`);

--
-- Indici per le tabelle `titolo`
--
ALTER TABLE `titolo`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `articoli`
--
ALTER TABLE `articoli`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT per la tabella `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT per la tabella `pagine`
--
ALTER TABLE `pagine`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT per la tabella `statuto`
--
ALTER TABLE `statuto`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT per la tabella `tab3`
--
ALTER TABLE `tab3`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `titolo`
--
ALTER TABLE `titolo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT per la tabella `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `articoli_pagine`
--
ALTER TABLE `articoli_pagine`
  ADD CONSTRAINT `articoli_pagine_id_articolo_foreign` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articoli_pagine_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `pagine` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `statuto`
--
ALTER TABLE `statuto`
  ADD CONSTRAINT `statuto_id_titolo_foreign` FOREIGN KEY (`id_titolo`) REFERENCES `titolo` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `tab3`
--
ALTER TABLE `tab3`
  ADD CONSTRAINT `tab3_id_pagina_foreign` FOREIGN KEY (`id_pagina`) REFERENCES `pagine` (`id`) ON DELETE CASCADE;

--
-- Limiti per la tabella `tab3_articoli`
--
ALTER TABLE `tab3_articoli`
  ADD CONSTRAINT `tab3_articoli_id_articolo_foreign` FOREIGN KEY (`id_articolo`) REFERENCES `articoli` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tab3_articoli_id_tab3_foreign` FOREIGN KEY (`id_tab3`) REFERENCES `tab3` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
