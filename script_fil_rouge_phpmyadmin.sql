use master
;
drop database fil_rouge
;
create database fil_rouge
;

use fil_rouge
;

CREATE TABLE RubriqueDuProduit(
	IdentifiantRubrique			    BIGint AUTO_INCREMENT PRIMARY KEY,
    NomRubrique                     VARCHAR(150) ,
	Rubrique_principale				BIGINT NULL REFERENCES RubriqueDuProduit(IdentifiantRubrique)
)
;
create index NomRubrique on RubriqueDuProduit(NomRubrique)
;
CREATE TABLE Produit(
	IdentifiantProduit           BIGINT PRIMARY KEY not null,
	LibelleCourtDuProduit        VARCHAR (200),
	LibelleLongDuProduit         VARCHAR (500),
	PhotoDuProduit               VARCHAR (250),
	PrixDachatDuProduit          INT,
	ProduitActif                 bit,
	PrixHorsTaxe                 INT,
	TVA                          BIGINT,
	IdentifiantRubrique BIGINT REFERENCES RubriqueDuProduit(IdentifiantRubrique)
	
)

;
create index IdentifiantDuProduit on Produit(IdentifiantProduit)
;

CREATE TABLE Fournisseur(
	IdentifiantFournisseur   BIGINT PRIMARY KEY NOT NULL,
	Importateur              bit,
	NomDuFournisseur         VARCHAR (250),
	AdresseDuFournisseur     VARCHAR (500),
	VilleDuFournisseur       VARCHAR (250),
	CodePostalDuFournisseur  BIGINT,
	AdresseMailDuFournisseur VARCHAR (250),
	TelephoneDuFournisseur   BIGINT
)

;
create index IdentifiantDuFournisseur on Fournisseur(IdentifiantFournisseur)
;
CREATE TABLE Service_Commercial(
	IdentifiantServiceCommercial BIGINT PRIMARY KEY NOT NULL,
	NomDuCommercial              VARCHAR (250),
	PrenomDuCommercial           VARCHAR (250),
	AdresseDuCommercial          VARCHAR (400),
	VilleDuCommercial            VARCHAR (250),
	CodePostalDuCommercial       BIGINT,
	TelephoneDuCommercial        BIGINT,
	ClientParticulier            bit,
	AdresseMailDuCommercial      VARCHAR (250)
	
	
)

;
create index IdentifiantDuServiceCommercial on Service_Commercial(IdentifiantServiceCommercial)
;
CREATE TABLE Client(
	IdentifiantClient   BIGINT PRIMARY KEY NOT NULL,
	ReferenceDuClient   BIGINT,
	NomDuClient         VARCHAR (250),
	PrenomDuClient      VARCHAR (250),
	Coefficient         BIGINT,
	AdresseDuClient     VARCHAR (250),
	VilleDuClient       VARCHAR (250),
	CodePostalDuClient  BIGINT,
	AdresseMailDuClient VARCHAR (250),
	TelephoneDuClient   BIGINT,
	NumeroSiret         BIGINT,
	NomEnseigne         VARCHAR (250),
	ComplementAdresse   VARCHAR (250),
	AdresseDeLivraisonClient      VARCHAR (250),
	ComplementAdresseClient       VARCHAR (250),
	VilleDeLivraisonClient        VARCHAR (250),
	CodePostalDeLivraisonClient   VARCHAR (250),
	ClientParticulier            bit,
	Sexe                         bit,
	ClientActif                  bit,
	Pays                 VARCHAR (100),
	MotDePasse           VARCHAR (400),
	Role                 VARCHAR (50),
	IdentifiantServiceCommercial BIGINT REFERENCES Service_Commercial(IdentifiantServiceCommercial)

)

;
create index IdentifiantDuClient on Client(IdentifiantClient)
;
CREATE TABLE Facture(
	NumeroFacture       BIGINT PRIMARY KEY NOT NULL,
	ModePaiementFacture VARCHAR (250),
	DateDeFacture       DATETIME
	
)

;
create index NumeroDeLaFacture on Facture(NumeroFacture)
;
CREATE TABLE Commande(
	IdentifiantCommande     BIGINT PRIMARY KEY NOT NULL,
	NumeroDeCommande        BIGINT,
	DateDeCommande          DATETIME,
	AdresseDeLivraison      VARCHAR (250) NOT NULL,
	VilleDeLivraison        VARCHAR (250) NOT NULL,
	CodePostalDeLivraison   VARCHAR (250) NOT NULL,
	PrixTotalCommande       INT,
	AdresseDeFacturation    VARCHAR (250) NOT NULL,
	VilleDeFacturation      VARCHAR (250) NOT NULL,
	CodePostalDeFacturation BIGINT  NOT NULL,
	IdentifiantClient       BIGINT REFERENCES Client(IdentifiantClient),
	NumeroFacture           BIGINT REFERENCES Facture(NumeroFacture)

)

;
create index IdentifiantDeLaCommande on Commande(IdentifiantCommande)

;
CREATE TABLE Livraison(
	IdentifiantLieuDeLivraison BIGINT PRIMARY KEY NOT NULL,
	LivraisonPartielle        bit,
	DateDeLivraison           DATETIME null default null,
	NumeroDeLivraison         BIGINT,
	BonDeLivraison            VARCHAR (250),
	IdentifiantCommande       BIGINT REFERENCES Commande(IdentifiantCommande)
	
)

;
create index IdentifiantDuLieuDeLivraison on Livraison(IdentifiantLieuDeLivraison)
;
CREATE TABLE vendre(
	ReferenceFournisseurDuProduit BIGINT,
	IdentifiantFournisseur        BIGINT REFERENCES Fournisseur(IdentifiantFournisseur),
	IdentifiantProduit            BIGINT REFERENCES Produit(IdentifiantProduit),
	PRIMARY KEY(IdentifiantFournisseur,IdentifiantProduit)
)

;
create index ReferenceDuFournisseur on vendre(ReferenceFournisseurDuProduit)
;
CREATE TABLE contenir(
	quantite            BIGINT,
	PrixDeVente         INT,
	IdentifiantProduit  BIGINT REFERENCES Produit(IdentifiantProduit),
	IdentifiantCommande BIGINT REFERENCES Commande(IdentifiantCommande),
	PRIMARY KEY(IdentifiantProduit,IdentifiantCommande)
)

;
CREATE TABLE composer(
	quantite_livrer           BIGINT,
	PrixVendu                 INT,
	IdentifiantProduit        BIGINT REFERENCES Produit(IdentifiantProduit),
	IdentfiantLieuDeLivraison BIGINT REFERENCES Livraison(IdentifiantLieuDeLivraison),
	PRIMARY KEY(IdentifiantProduit,IdentfiantLieuDeLivraison)
)