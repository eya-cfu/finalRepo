<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200412195421 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE composants (id INT AUTO_INCREMENT NOT NULL, id_composant VARCHAR(6) NOT NULL, nom_comp VARCHAR(20) NOT NULL, unite VARCHAR(20) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE boulangeries (id INT AUTO_INCREMENT NOT NULL, matricule_id INT DEFAULT NULL, nom_boul VARCHAR(20) NOT NULL, adresse VARCHAR(50) NOT NULL, telephone BIGINT NOT NULL, id_boulangerie INT NOT NULL, nb_operateurs INT DEFAULT NULL, UNIQUE INDEX UNIQ_2FA1DF49AAADC05 (matricule_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE livreurs (id INT AUTO_INCREMENT NOT NULL, matricule_id INT NOT NULL, tele_livreur BIGINT DEFAULT NULL, num_vehicule VARCHAR(20) NOT NULL, UNIQUE INDEX UNIQ_28E6A8A09AAADC05 (matricule_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commandes_bl (id INT AUTO_INCREMENT NOT NULL, id_boulangerie_id INT NOT NULL, livreur_id INT DEFAULT NULL, id_commande_bl VARCHAR(20) NOT NULL, etat VARCHAR(20) NOT NULL, due_date DATE NOT NULL, creation_date DATE NOT NULL, INDEX IDX_66DA931FA0DE2F48 (id_boulangerie_id), INDEX IDX_66DA931FF8646701 (livreur_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE administrateurs (id INT AUTO_INCREMENT NOT NULL, login_admin VARCHAR(50) NOT NULL, password_admin VARCHAR(20) NOT NULL, nom_admin VARCHAR(50) NOT NULL, tele_admin BIGINT DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE details_commandes_bl (id INT AUTO_INCREMENT NOT NULL, id_detail INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE details_commandes_bl_produits (details_commandes_bl_id INT NOT NULL, produits_id INT NOT NULL, INDEX IDX_D13C5E7CA93E2F63 (details_commandes_bl_id), INDEX IDX_D13C5E7CCD11A2CF (produits_id), PRIMARY KEY(details_commandes_bl_id, produits_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE details_commandes_bl_commandes_bl (details_commandes_bl_id INT NOT NULL, commandes_bl_id INT NOT NULL, INDEX IDX_8E9FABD6A93E2F63 (details_commandes_bl_id), INDEX IDX_8E9FABD64D51C308 (commandes_bl_id), PRIMARY KEY(details_commandes_bl_id, commandes_bl_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE produits (id INT AUTO_INCREMENT NOT NULL, code_produit INT NOT NULL, libelle VARCHAR(20) DEFAULT NULL, prix_ha DOUBLE PRECISION NOT NULL, tva DOUBLE PRECISION NOT NULL, prix_ttc DOUBLE PRECISION DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE compositions_produit (id INT AUTO_INCREMENT NOT NULL, quantite_comp INT NOT NULL, id_composition INT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE compositions_produit_produits (compositions_produit_id INT NOT NULL, produits_id INT NOT NULL, INDEX IDX_F2EFD642C5DEA694 (compositions_produit_id), INDEX IDX_F2EFD642CD11A2CF (produits_id), PRIMARY KEY(compositions_produit_id, produits_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE compositions_produit_composants (compositions_produit_id INT NOT NULL, composants_id INT NOT NULL, INDEX IDX_D5FF3F3FC5DEA694 (compositions_produit_id), INDEX IDX_D5FF3F3FD960F9EE (composants_id), PRIMARY KEY(compositions_produit_id, composants_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE laboratoires (id INT AUTO_INCREMENT NOT NULL, matricule_id INT DEFAULT NULL, telephone BIGINT DEFAULT NULL, id_labo INT NOT NULL, UNIQUE INDEX UNIQ_19A7F1029AAADC05 (matricule_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE profils (id INT AUTO_INCREMENT NOT NULL, matricule INT NOT NULL, nom VARCHAR(50) NOT NULL, affectation VARCHAR(20) DEFAULT NULL, login VARCHAR(50) NOT NULL, password VARCHAR(20) NOT NULL, UNIQUE INDEX UNIQ_75831F5EAA08CB10 (login), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commandes_labo (id INT AUTO_INCREMENT NOT NULL, id_commande_labo INT NOT NULL, libelle VARCHAR(10) DEFAULT NULL, quantite_total INT DEFAULT NULL, due_date DATE NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE commandes_labo_produits (commandes_labo_id INT NOT NULL, produits_id INT NOT NULL, INDEX IDX_D1412388CDC8721A (commandes_labo_id), INDEX IDX_D1412388CD11A2CF (produits_id), PRIMARY KEY(commandes_labo_id, produits_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE boulangeries ADD CONSTRAINT FK_2FA1DF49AAADC05 FOREIGN KEY (matricule_id) REFERENCES profils (id)');
        $this->addSql('ALTER TABLE livreurs ADD CONSTRAINT FK_28E6A8A09AAADC05 FOREIGN KEY (matricule_id) REFERENCES profils (id)');
        $this->addSql('ALTER TABLE commandes_bl ADD CONSTRAINT FK_66DA931FA0DE2F48 FOREIGN KEY (id_boulangerie_id) REFERENCES boulangeries (id)');
        $this->addSql('ALTER TABLE commandes_bl ADD CONSTRAINT FK_66DA931FF8646701 FOREIGN KEY (livreur_id) REFERENCES livreurs (id)');
        $this->addSql('ALTER TABLE details_commandes_bl_produits ADD CONSTRAINT FK_D13C5E7CA93E2F63 FOREIGN KEY (details_commandes_bl_id) REFERENCES details_commandes_bl (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE details_commandes_bl_produits ADD CONSTRAINT FK_D13C5E7CCD11A2CF FOREIGN KEY (produits_id) REFERENCES produits (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE details_commandes_bl_commandes_bl ADD CONSTRAINT FK_8E9FABD6A93E2F63 FOREIGN KEY (details_commandes_bl_id) REFERENCES details_commandes_bl (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE details_commandes_bl_commandes_bl ADD CONSTRAINT FK_8E9FABD64D51C308 FOREIGN KEY (commandes_bl_id) REFERENCES commandes_bl (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE compositions_produit_produits ADD CONSTRAINT FK_F2EFD642C5DEA694 FOREIGN KEY (compositions_produit_id) REFERENCES compositions_produit (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE compositions_produit_produits ADD CONSTRAINT FK_F2EFD642CD11A2CF FOREIGN KEY (produits_id) REFERENCES produits (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE compositions_produit_composants ADD CONSTRAINT FK_D5FF3F3FC5DEA694 FOREIGN KEY (compositions_produit_id) REFERENCES compositions_produit (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE compositions_produit_composants ADD CONSTRAINT FK_D5FF3F3FD960F9EE FOREIGN KEY (composants_id) REFERENCES composants (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE laboratoires ADD CONSTRAINT FK_19A7F1029AAADC05 FOREIGN KEY (matricule_id) REFERENCES profils (id)');
        $this->addSql('ALTER TABLE commandes_labo_produits ADD CONSTRAINT FK_D1412388CDC8721A FOREIGN KEY (commandes_labo_id) REFERENCES commandes_labo (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE commandes_labo_produits ADD CONSTRAINT FK_D1412388CD11A2CF FOREIGN KEY (produits_id) REFERENCES produits (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE compositions_produit_composants DROP FOREIGN KEY FK_D5FF3F3FD960F9EE');
        $this->addSql('ALTER TABLE commandes_bl DROP FOREIGN KEY FK_66DA931FA0DE2F48');
        $this->addSql('ALTER TABLE commandes_bl DROP FOREIGN KEY FK_66DA931FF8646701');
        $this->addSql('ALTER TABLE details_commandes_bl_commandes_bl DROP FOREIGN KEY FK_8E9FABD64D51C308');
        $this->addSql('ALTER TABLE details_commandes_bl_produits DROP FOREIGN KEY FK_D13C5E7CA93E2F63');
        $this->addSql('ALTER TABLE details_commandes_bl_commandes_bl DROP FOREIGN KEY FK_8E9FABD6A93E2F63');
        $this->addSql('ALTER TABLE details_commandes_bl_produits DROP FOREIGN KEY FK_D13C5E7CCD11A2CF');
        $this->addSql('ALTER TABLE compositions_produit_produits DROP FOREIGN KEY FK_F2EFD642CD11A2CF');
        $this->addSql('ALTER TABLE commandes_labo_produits DROP FOREIGN KEY FK_D1412388CD11A2CF');
        $this->addSql('ALTER TABLE compositions_produit_produits DROP FOREIGN KEY FK_F2EFD642C5DEA694');
        $this->addSql('ALTER TABLE compositions_produit_composants DROP FOREIGN KEY FK_D5FF3F3FC5DEA694');
        $this->addSql('ALTER TABLE boulangeries DROP FOREIGN KEY FK_2FA1DF49AAADC05');
        $this->addSql('ALTER TABLE livreurs DROP FOREIGN KEY FK_28E6A8A09AAADC05');
        $this->addSql('ALTER TABLE laboratoires DROP FOREIGN KEY FK_19A7F1029AAADC05');
        $this->addSql('ALTER TABLE commandes_labo_produits DROP FOREIGN KEY FK_D1412388CDC8721A');
        $this->addSql('DROP TABLE composants');
        $this->addSql('DROP TABLE boulangeries');
        $this->addSql('DROP TABLE livreurs');
        $this->addSql('DROP TABLE commandes_bl');
        $this->addSql('DROP TABLE administrateurs');
        $this->addSql('DROP TABLE details_commandes_bl');
        $this->addSql('DROP TABLE details_commandes_bl_produits');
        $this->addSql('DROP TABLE details_commandes_bl_commandes_bl');
        $this->addSql('DROP TABLE produits');
        $this->addSql('DROP TABLE compositions_produit');
        $this->addSql('DROP TABLE compositions_produit_produits');
        $this->addSql('DROP TABLE compositions_produit_composants');
        $this->addSql('DROP TABLE laboratoires');
        $this->addSql('DROP TABLE profils');
        $this->addSql('DROP TABLE commandes_labo');
        $this->addSql('DROP TABLE commandes_labo_produits');
    }
}
