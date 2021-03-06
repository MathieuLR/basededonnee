INSERT into RubriqueDuProduit (IdentifiantRubrique, NomRubrique, Rubrique_principale) VALUES (1, 'Guitare', NULL),

(2, 'Djembe', NULL),

(3, 'Batterie', NULL),

(4, 'Amplificateur', NULL),

(5, 'TableDeMixage', NULL),

(6, 'Guitare electrique', NULL),

(7, 'Guitare accoustique', NULL);


INSERT into Produit (IdentifiantProduit, LibelleCourtDuProduit, LibelleLongDuProduit, PhotoDuProduit, PrixDachatDuProduit, ProduitActif, PrixHorsTaxe, TVA, IdentifiantRubrique) VALUES (1898254564, 'Fen_Arms', 'Fender_Tim_Armstrong', 'Fender_Tim_Armstrong.jpg', 4220, NULL, 3376, 0, 7),

(2472858823, 'Epi_Explo', 'Epiphone_1984_Explorer', 'Epiphone_1984_Explorer.jpg', 555, NULL, 444, 0, 6),

(2978612479, 'Mille_Drum', 'Millenium_Drumset', 'Millenium_Drumset.jpg', 145, NULL, 116, 0, 3),

(3126483282, 'Mack_Pro', 'Mackie_Pro_Fx', 'Mackie_Pro_Fx.jpg', 965, NULL, 772, 0, 5),

(3316815698, 'Sam_Mix', 'Samson_Mix_Pad', 'Samson_Mix_Pad.jpg', 2680, NULL, 2144, 0, 5),

(3362775779, 'Chap_Gho', 'Chapman_Ghost', 'Chapman_Ghost.jpg', 9690, NULL, 7752, 0, 6),

(3538915939, 'Aer_Comp', 'Aer_Compact_60', 'Aer_Compact_60.jpg', 9950, NULL, 796, 0, 4),

(3692378495, 'Thom_Djem', 'Thomann_Djembe', 'Thomann_Djembe.jpg', 1380, NULL, 1104, 0, 2),

(3796468982, 'All_Hea', 'Allen_Heath', 'Allen_Heath.jpg', 2440, NULL, 1952, 0, 5),

(4355998478, 'Beh_Xen', 'Behringer_Xenyx', 'Behringer_Xenyx.jpg', 1660, NULL, 1328, 0, 5),

(4899759848, 'Pear_Arct', 'Pearl_Arctic_Spar', 'Pearl_Arctic_Spar.jpg', 7590, NULL, 6072, 0, 3),

(5319676538, 'Hel_Jun', 'Hellweg_Junior_CM', 'Hellweg_Junior_CM.jpg', 215, NULL, 172, 0, 1),

(6196385464, 'Rem_Acous', 'Remo_Tuned_Acousticon', 'Remo_Tuned_Acousticon.jpg', 3090, NULL, 2472, 0, 2),

(6348876411, 'Orte', 'Ortega_WR', 'Ortega_WR.jpg', 1750, NULL, 1400, 0, 7),

(6729291892, 'Gibs_Explo', 'Gibson_Explorer', 'Gibson_Explorer.jpg', 10550, NULL, 8440, 0, 6),

(6766238824, 'Sound', 'Soundcraft_Ui', 'Soundcraft_Ui.jpg', 5440, NULL, 4352, 0, 5),

(7584131472, 'Yama_Mg', 'Yamaha_MG16', 'Yamaha_MG16.jpg', 4760, NULL, 3808, 0, 4),

(9456541233, 'Schec_Mer', 'Schecter_Keith_Merrow', 'Schecter_Keith_Merrow.jpg', 1299, NULL, 1039, 0, 6),

(9756492716, 'Jack_Rho', 'Jackson_', 'Jackson.jpg', 2980, NULL, 2384, 0, 1),

(9853744466, 'Yam_C40', 'Yamaha_C40', 'Yamaha_C40.jpg', 1290, NULL, 1032, 0, 7);

INSERT into Fournisseur (IdentifiantFournisseur, Importateur, NomDuFournisseur, AdresseDuFournisseur, VilleDuFournisseur, CodePostalDuFournisseur, AdresseMailDuFournisseur, TelephoneDuFournisseur) VALUES (8546545645, NULL, 'Bass Maniac', '17 rue de Douai', 'Paris', 75009, 'bass,maniac@wanadoo,fr', 153219119),

(8646515341, NULL, 'Porchez Musique', '56 avenue Général Leclerc', 'Foix', 9000, 'porchez,musique@wanadoo,fr', 561650150),

(8986214569, NULL, 'Colos music', '17 rue Blanchers', 'Toulouse', 31000, 'colos,music@wanadoo,fr', 561221845),

(9656465468, NULL, 'Macca Music', 'avenue Michel Serres', 'Agen', 47000, 'maccca,music@wanadoo,fr', 553666014);

INSERT into vendre (ReferenceFournisseurDuProduit, IdentifiantFournisseur, IdentifiantProduit) VALUES (111112, 9656465468, 3126483282),

(111112, 9656465468, 3316815698),

(142536, 8646515341, 2472858823),

(142536, 8646515341, 3362775779),

(142536, 8646515341, 4355998478),

(583669, 8546545645, 1898254564),

(583669, 8546545645, 5319676538),

(583669, 8546545645, 6348876411),

(785421, 8986214569, 2978612479),

(785421, 8986214569, 6766238824),

(785421, 8986214569, 9756492716);

INSERT into Service_Commercial (IdentifiantServiceCommercial, NomDuCommercial, PrenomDuCommercial, AdresseDuCommercial, VilleDuCommercial, CodePostalDuCommercial, TelephoneDuCommercial, ClientParticulier, AdresseMailDuCommercial) VALUES (27354856975, 'Petit', 'Christophe', '156 avenue de rien', 'Marseille', 13003, 458253698, 0, 'christophe,petit@wanadoo,fr'),

(85234562156, 'Dupond', 'Jean', '12 rue de l''impasse', 'Paris', 75016, 152369878, 1, 'dupond,jean@wanadoo,fr');

INSERT into Client (IdentifiantClient, ReferenceDuClient, NomDuClient, PrenomDuClient, Coefficient, AdresseDuClient, VilleDuClient, CodePostalDuClient, AdresseMailDuClient, TelephoneDuClient, IdentifiantServiceCommercial, NumeroSiret, NomEnseigne, ComplementAdresse, AdresseDeLivraisonClient, ComplementAdresseClient, VilleDeLivraisonClient, CodePostalDeLivraisonClient, ClientParticulier, Sexe, ClientActif, Pays, MotDePasse, Role) VALUES (460446413, 123456, 'Fedner', 'Jean Pierre', NULL, '17 rue du moulin de la pointe', 'Paris', 75013, 'jeanpierre,fedner@wanadoo,fr', 627943269, 27354856975, 5984123, 'Isavert', 'batiment 6', '28 rue du poulin de la mointe', 'Cedex9', 'Lille', 59000, 1, 1, 1, 'France', NULL, 'administrateur'),

(566546321, 789123, 'Rouillon', 'Camille', NULL, '106 rue Cauderes', 'Bordeaux', 33800, 'camille,rouillon@wanadoo,fr', 533572888, 85234562156, NULL, NULL, NULL, '108 rue du ulin de la prointe', 'Cedex6', 'Marseille', 13000, 0, 0, 1, 'France', NULL, 'utilisateur'),

(654130534, 456789, 'Rahem', 'Sarah', NULL, '36 rue jacquemars gielee', 'Lille', 59800, 'sarah,rahem@wanadoo,fr', 359086381, 27354856975, NULL, NULL, NULL, '14 avenue de la sinte', 'Cedexe5', 'Bordeaux', 33000, 0, 0, 1, 'France', NULL, 'utilisateur');

INSERT into Facture (NumeroFacture, ModePaiementFacture, DateDeFacture) VALUES (141894, 'cheque', CAST('2016-04-02 00:00:00000' AS DateTime)),

(387784, 'carte bleue', CAST('2016-03-16 00:00:00000' AS DateTime)),

(731367, 'carte bleue', CAST('2016-05-12 00:00:00000' AS DateTime));

INSERT into Commande (IdentifiantCommande, NumeroDeCommande, DateDeCommande, AdresseDeLivraison, VilleDeLivraison, CodePostalDeLivraison, PrixTotalCommande, AdresseDeFacturation, VilleDeFacturation, CodePostalDeFacturation, IdentifiantClient, NumeroFacture) VALUES (1797987187, 15338566, CAST('2016-05-03 00:00:00000' AS DateTime), '83 rue des cordelliers', 'Lille', '59000', 4500000, '151 rue du compostel', 'Beauvais', 60000, 460446413, 141894),

(4548664388, 85365613, CAST('2016-04-23 00:00:00000' AS DateTime), '25 rue marcadet poissonier', 'Paris', '75018', 3250000, '98 rue de derriere', 'Marseille', 13001, 566546321, 387784),

(6719877186, 98414573, CAST('2015-12-12 00:00:00000' AS DateTime), '12 rue de l''impasse', 'Amiens', '80000', 30000000, '12 rue de l''impasse', 'Amiens', 80000, 654130534, 731367),

(9894656464, 45781974, CAST('2016-04-12 00:00:00000' AS DateTime), '128 avenue des chandeliers', 'Strasbourg', '67000', 21000000, '414 boulevard des cappucines', 'Nice', 6000, 460446413, NULL);

INSERT into contenir (quantite, PrixDeVente, IdentifiantProduit, IdentifiantCommande) VALUES (4, 4700000, 1898254564, 1797987187),

(22, 4700000, 1898254564, 6719877186),

(8, 6000000, 2472858823, 1797987187),

(9, 560000, 2472858823, 4548664388),

(1, 2000000, 2978612479, 1797987187),

(10, 12000000, 3538915939, 4548664388),

(8, 12000000, 3538915939, 6719877186),

(6, 1700000, 3692378495, 1797987187),

(3, 2500000, 5319676538, 1797987187),

(5, 2500000, 5319676538, 4548664388),

(5, 2500000, 5319676538, 6719877186),

(11, 13500000, 6729291892, 6719877186),

(3, 5000000, 7584131472, 4548664388),

(6, 14000000, 7584131472, 6719877186),

(2, 14000000, 9456541233, 1797987187),

(4, 14000000, 9456541233, 4548664388),

(8, 14000000, 9456541233, 6719877186),

(7, 3500000, 9756492716, 4548664388);

INSERT into Livraison (IdentifiantLieuDeLivraison, LivraisonPartielle, DateDeLivraison, NumeroDeLivraison, BonDeLivraison, IdentifiantCommande) VALUES (4522691367, NULL, CAST('2016-03-21 00:00:00000' AS DateTime), 6842357, 'GHDOQE', 1797987187),

(6597894646, NULL, NULL, 6842357, 'GHDOQE', 1797987187),

(6985472315, NULL, CAST('2016-05-12 00:00:00000' AS DateTime), 9512458, 'ONFSNF', 6719877186);

