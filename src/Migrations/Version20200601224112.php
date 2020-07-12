<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20200601224112 extends AbstractMigration
{
    public function getDescription() : string
    {
        return '';
    }

    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commandes_labo DROP FOREIGN KEY FK_874429C9279A831D');
        $this->addSql('DROP INDEX IDX_874429C9279A831D ON commandes_labo');
        $this->addSql('ALTER TABLE commandes_labo ADD code_produit INT NOT NULL, DROP code_produit_id');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('ALTER TABLE commandes_labo ADD code_produit_id INT DEFAULT NULL, DROP code_produit');
        $this->addSql('ALTER TABLE commandes_labo ADD CONSTRAINT FK_874429C9279A831D FOREIGN KEY (code_produit_id) REFERENCES produits (id)');
        $this->addSql('CREATE INDEX IDX_874429C9279A831D ON commandes_labo (code_produit_id)');
    }
}
