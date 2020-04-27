<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200427223920 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE details_commandes_bl CHANGE id_detail id_detail INT DEFAULT NULL');
        $this->addSql('ALTER TABLE produits CHANGE code_produit code_produit INT DEFAULT NULL');
        $this->addSql('ALTER TABLE compositions_produit CHANGE id_composition id_composition INT DEFAULT NULL');
        $this->addSql('ALTER TABLE commandes_labo CHANGE id_commande_labo id_commande_labo INT DEFAULT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commandes_labo CHANGE id_commande_labo id_commande_labo INT NOT NULL');
        $this->addSql('ALTER TABLE compositions_produit CHANGE id_composition id_composition INT NOT NULL');
        $this->addSql('ALTER TABLE details_commandes_bl CHANGE id_detail id_detail INT NOT NULL');
        $this->addSql('ALTER TABLE produits CHANGE code_produit code_produit INT NOT NULL');
    }
}
