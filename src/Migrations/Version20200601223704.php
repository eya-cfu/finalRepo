<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200601223704 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE commandes_labo_produits');
        $this->addSql('ALTER TABLE commandes_labo ADD code_produit_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE commandes_labo ADD CONSTRAINT FK_874429C9279A831D FOREIGN KEY (code_produit_id) REFERENCES produits (id)');
        $this->addSql('CREATE INDEX IDX_874429C9279A831D ON commandes_labo (code_produit_id)');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE commandes_labo_produits (commandes_labo_id INT NOT NULL, produits_id INT NOT NULL, INDEX IDX_D1412388CD11A2CF (produits_id), INDEX IDX_D1412388CDC8721A (commandes_labo_id), PRIMARY KEY(commandes_labo_id, produits_id)) DEFAULT CHARACTER SET utf8 COLLATE `utf8_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE commandes_labo_produits ADD CONSTRAINT FK_D1412388CD11A2CF FOREIGN KEY (produits_id) REFERENCES produits (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE commandes_labo_produits ADD CONSTRAINT FK_D1412388CDC8721A FOREIGN KEY (commandes_labo_id) REFERENCES commandes_labo (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE commandes_labo DROP FOREIGN KEY FK_874429C9279A831D');
        $this->addSql('DROP INDEX IDX_874429C9279A831D ON commandes_labo');
        $this->addSql('ALTER TABLE commandes_labo DROP code_produit_id');
    }
}
