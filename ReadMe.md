#API for Bakeries Management
The Boulangerie finally debugged for use, hosting service might need to be adapted


## Getting Started
The ApiHomeController class defines the Homepage which is an html file that contains a full documentation.

All the Methods defined in the following documentation are implemented in their specific
Controller. 
Most get methods follow a similar way, access repo and then findBy Criteria. 
Some Classes require more filtering. For more cohesion and less coupling these are handled inside the Controller they refer to. 
An Example of this is getByIdCommande in CommandeBL. 

The repository Classes handle deleting, adding and updating rows to the database and are 
mostly decoupled from the controller they are only called when such an action needs to be performed,
While the Controller defines what is modified. 
The Entity Classes control the models and what they contain. They also include the mapping in between the classes via Doctrine 
If needed modifying attributes and their getters/setters is done here. 

For Testing Purposes the Folder Fixtures contains a class that initiazes the database with a lot 
of objects. Simply run 

$ ~ php bin/console doctrine:fixtures:load


## Documentation for API Endpoints

All URIs are relative to *https://virtserver.swaggerhub.com/Boulangerie/ApiCourse/1.0.0*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AdministrateursApiInterface* | [**addAdmin**](Resources/docs/Api/AdministrateursApiInterface.md#addadmin) | **POST** /adminstrateurs | add a new Admin
*AdministrateursApiInterface* | [**changeAdminPw**](Resources/docs/Api/AdministrateursApiInterface.md#changeadminpw) | **PATCH** /administrateurs/{loginAdmin} | changing Admin&#39;s password
*AdministrateursApiInterface* | [**deleteAdminbyLogin**](Resources/docs/Api/AdministrateursApiInterface.md#deleteadminbylogin) | **DELETE** /administrateurs/{loginAdmin} | Deletes an Admin by login
*AdministrateursApiInterface* | [**getAdminById**](Resources/docs/Api/AdministrateursApiInterface.md#getadminbyid) | **GET** /administrateurs/{loginAdmin} | get Admin by Id
*AdministrateursApiInterface* | [**getAdministrateurs**](Resources/docs/Api/AdministrateursApiInterface.md#getadministrateurs) | **GET** /adminstrateurs | get all admins
*BoulangeriesApiInterface* | [**addBoulangerie**](Resources/docs/Api/BoulangeriesApiInterface.md#addboulangerie) | **POST** /boulangeries | Add a new boulangerie
*BoulangeriesApiInterface* | [**deleteBoulangerie**](Resources/docs/Api/BoulangeriesApiInterface.md#deleteboulangerie) | **DELETE** /boulangeries/ById/{idBoulangerie} | deletes Boulangerie by id SOFT DELETE
*BoulangeriesApiInterface* | [**getBoulangerieById**](Resources/docs/Api/BoulangeriesApiInterface.md#getboulangeriebyid) | **GET** /boulangeries/ById/{idBoulangerie} | returns one Boulangerie by ID
*BoulangeriesApiInterface* | [**getBoulangerieByMatricule**](Resources/docs/Api/BoulangeriesApiInterface.md#getboulangeriebymatricule) | **GET** /boulangeries/{matricule} | returns one Boulangerie by Matricule of Responsable
*BoulangeriesApiInterface* | [**getBoulangeries**](Resources/docs/Api/BoulangeriesApiInterface.md#getboulangeries) | **GET** /boulangeries | get all boulangeries
*BoulangeriesApiInterface* | [**updateAndReplaceBoulangerie**](Resources/docs/Api/BoulangeriesApiInterface.md#updateandreplaceboulangerie) | **PUT** /boulangeries/ById/{idBoulangerie} | replaces Boulangerie by Updated version
*CommandesBLApiInterface* | [**addCommandeBL**](Resources/docs/Api/CommandesBLApiInterface.md#addcommandebl) | **POST** /commandesBL | create an orderBL
*CommandesBLApiInterface* | [**commandesBLIdCommandeBLGet**](Resources/docs/Api/CommandesBLApiInterface.md#commandesblidcommandeblget) | **GET** /commandesBL/{idCommandeBL} | returns a commandeBL
*CommandesBLApiInterface* | [**getCmdsByEtatAndBoulangerieID**](Resources/docs/Api/CommandesBLApiInterface.md#getcmdsbyetatandboulangerieid) | **GET** /commandesBL/getCmdsbyEtatAndBoulangerieID | get Commandes collection of the Boulangerie by Etat
*CommandesBLApiInterface* | [**getCmdsByEtatAndmatricule**](Resources/docs/Api/CommandesBLApiInterface.md#getcmdsbyetatandmatricule) | **GET** /commandesBL/getCmdsByEtatAndMatricule | gets commandes collection by matricule for livreur
*CommandesBLApiInterface* | [**getCmdsForLab**](Resources/docs/Api/CommandesBLApiInterface.md#getcmdsforlab) | **GET** /commandesBL/getCmdsForLab | gets commandes filtered for laboratoire
*CommandesBLApiInterface* | [**getDetailsByCommandeBL**](Resources/docs/Api/CommandesBLApiInterface.md#getdetailsbycommandebl) | **GET** /commandesBL/{idCommandeBL}/detailsCmdBL | 
*CommandesBLApiInterface* | [**getcommandesBL**](Resources/docs/Api/CommandesBLApiInterface.md#getcommandesbl) | **GET** /commandesBL | 
*CommandesBLApiInterface* | [**patchCmdBlEtat**](Resources/docs/Api/CommandesBLApiInterface.md#patchcmdbletat) | **PATCH** /commandesBL/{idCommandeBL} | patching etat of a commandeBL objet
*CommandesBLApiInterface* | [**patchLivreur**](Resources/docs/Api/CommandesBLApiInterface.md#patchlivreur) | **PATCH** /commandesBL/{idCommandeBL}/identifyLivreur | putting in the matricule of Livreur
*CommandesLaboApiInterface* | [**addcommandeLabo**](Resources/docs/Api/CommandesLaboApiInterface.md#addcommandelabo) | **POST** /commandesLabo | Add a new commandesLabo
*CommandesLaboApiInterface* | [**getCmdsByEtat**](Resources/docs/Api/CommandesLaboApiInterface.md#getcmdsbyetat) | **GET** /commandesBL/getCmdsByEtat | returns commandes filtered collection for BL
*CommandesLaboApiInterface* | [**getCommandesLabo**](Resources/docs/Api/CommandesLaboApiInterface.md#getcommandeslabo) | **GET** /commandesLabo | get commandesLabo
*ComposantsApiInterface* | [**addComposant**](Resources/docs/Api/ComposantsApiInterface.md#addcomposant) | **POST** /composants | add Composant Object
*ComposantsApiInterface* | [**composantsIdComposantGet**](Resources/docs/Api/ComposantsApiInterface.md#composantsidcomposantget) | **GET** /composants/{idComposant} | get composant by id
*ComposantsApiInterface* | [**deleteComposantById**](Resources/docs/Api/ComposantsApiInterface.md#deletecomposantbyid) | **DELETE** /composants/{idComposant} | Deletes a composant by id SOFT DELETE
*ComposantsApiInterface* | [**getComposants**](Resources/docs/Api/ComposantsApiInterface.md#getcomposants) | **GET** /composants | get all composants
*CompositionsProduitApiInterface* | [**addCompositionProduit**](Resources/docs/Api/CompositionsProduitApiInterface.md#addcompositionproduit) | **POST** /compositionsProduit | create new CompositionProduit
*CompositionsProduitApiInterface* | [**deleteCompositionByProduitAndComposant**](Resources/docs/Api/CompositionsProduitApiInterface.md#deletecompositionbyproduitandcomposant) | **DELETE** /compositionsProduit/findByProduitAndComposant | Deletes a compositionProduit by codeProduit and idComposant
*CompositionsProduitApiInterface* | [**deleteCompositionsProduitById**](Resources/docs/Api/CompositionsProduitApiInterface.md#deletecompositionsproduitbyid) | **DELETE** /compositionsProduit/{idComposition} | Deletes a compositionProduit by its ID (DELETED WITH)
*CompositionsProduitApiInterface* | [**getCompositionsProduit**](Resources/docs/Api/CompositionsProduitApiInterface.md#getcompositionsproduit) | **GET** /compositionsProduit | get compositionsProduit
*DetailsCommandesBLApiInterface* | [**addDetailsCommandeBL**](Resources/docs/Api/DetailsCommandesBLApiInterface.md#adddetailscommandebl) | **POST** /detailsCommandesBL | add detailsCommandesBL
*DetailsCommandesBLApiInterface* | [**getDetailByProduitAndDate**](Resources/docs/Api/DetailsCommandesBLApiInterface.md#getdetailbyproduitanddate) | **GET** /detailsCommandesBL/findByProduitAndDate | get detailsCommandesBL by codeProduit and dueDate
*DetailsCommandesBLApiInterface* | [**getdetailsCommandesBL**](Resources/docs/Api/DetailsCommandesBLApiInterface.md#getdetailscommandesbl) | **GET** /detailsCommandesBL | get all details for all commandes BL
*DetailsCommandesBLApiInterface* | [**patchDetailQuantity**](Resources/docs/Api/DetailsCommandesBLApiInterface.md#patchdetailquantity) | **PATCH** /detailsCommandesBL/{idDetail} | patching the quantity of a detailsCommandesBL
*LivreursApiInterface* | [**addLivreur**](Resources/docs/Api/LivreursApiInterface.md#addlivreur) | **POST** /livreurs | Add a new livreur
*LivreursApiInterface* | [**deleteLivreurbyMatricule**](Resources/docs/Api/LivreursApiInterface.md#deletelivreurbymatricule) | **DELETE** /livreurs/{matricule} | Deletes a livreur by matricule SOFT DELETE + SOFT DELETE CORRESPONDING PROFIL
*LivreursApiInterface* | [**getLivreurs**](Resources/docs/Api/LivreursApiInterface.md#getlivreurs) | **GET** /livreurs | get all livreurs
*LivreursApiInterface* | [**getLivreursByMatricule**](Resources/docs/Api/LivreursApiInterface.md#getlivreursbymatricule) | **GET** /livreurs/{matricule} | 
*LivreursApiInterface* | [**updateLivreur**](Resources/docs/Api/LivreursApiInterface.md#updatelivreur) | **PUT** /livreurs/{matricule} | 
*ProduitsApiInterface* | [**addProduit**](Resources/docs/Api/ProduitsApiInterface.md#addproduit) | **POST** /produits | Add a new produit
*ProduitsApiInterface* | [**deleteProduitByCodeProduit**](Resources/docs/Api/ProduitsApiInterface.md#deleteproduitbycodeproduit) | **DELETE** /produits/{codeProduit} | Deletes a produit by its code SOFT DELETE
*ProduitsApiInterface* | [**getCompositionsOfProduit**](Resources/docs/Api/ProduitsApiInterface.md#getcompositionsofproduit) | **GET** /produits/{codeProduit}/compositionsProduit | get compositons filtered collection with quantity for a certain produit
*ProduitsApiInterface* | [**getProduitByCodeProduit**](Resources/docs/Api/ProduitsApiInterface.md#getproduitbycodeproduit) | **GET** /produits/{codeProduit} | get one produit
*ProduitsApiInterface* | [**getProduits**](Resources/docs/Api/ProduitsApiInterface.md#getproduits) | **GET** /produits | get all produits
*ProduitsApiInterface* | [**updateAndReplaceProduit**](Resources/docs/Api/ProduitsApiInterface.md#updateandreplaceproduit) | **PUT** /produits/{codeProduit} | replaces Produit by Updated version
*ProfilsApiInterface* | [**addProfil**](Resources/docs/Api/ProfilsApiInterface.md#addprofil) | **POST** /profils | Add a new profil to the system
*ProfilsApiInterface* | [**deleteProfilByMatricule**](Resources/docs/Api/ProfilsApiInterface.md#deleteprofilbymatricule) | **DELETE** /profils/{matricule} | Deletes a profil SOFT DELETE
*ProfilsApiInterface* | [**getProfilByLogin**](Resources/docs/Api/ProfilsApiInterface.md#getprofilbylogin) | **GET** /profils/Login/{login} | Find profil by Login
*ProfilsApiInterface* | [**getProfilByMatricule**](Resources/docs/Api/ProfilsApiInterface.md#getprofilbymatricule) | **GET** /profils/{matricule} | gets a profil by matricule
*ProfilsApiInterface* | [**getProfils**](Resources/docs/Api/ProfilsApiInterface.md#getprofils) | **GET** /profils | get all profils


## Documentation For Models

 - [Administrateurs](Resources/docs/Model/Administrateurs.md)
 - [Boulangeries](Resources/docs/Model/Boulangeries.md)
 - [CommandesBL](Resources/docs/Model/CommandesBL.md)
 - [CommandesLabo](Resources/docs/Model/CommandesLabo.md)
 - [Composants](Resources/docs/Model/Composants.md)
 - [CompositionsProduit](Resources/docs/Model/CompositionsProduit.md)
 - [DetailsCommandesBL](Resources/docs/Model/DetailsCommandesBL.md)
 - [InlineResponse200](Resources/docs/Model/InlineResponse200.md)
 - [InlineResponse2001](Resources/docs/Model/InlineResponse2001.md)
 - [InlineResponse2002](Resources/docs/Model/InlineResponse2002.md)
 - [InlineResponse2003](Resources/docs/Model/InlineResponse2003.md)
 - [InlineResponse2004](Resources/docs/Model/InlineResponse2004.md)
 - [InlineResponse2005](Resources/docs/Model/InlineResponse2005.md)
 - [Livreurs](Resources/docs/Model/Livreurs.md)
 - [Produits](Resources/docs/Model/Produits.md)
 - [Profils](Resources/docs/Model/Profils.md)


## Documentation For Authorization

 All endpoints do not require authorization.


## Author

leafyteam@notaRealCompany.com


