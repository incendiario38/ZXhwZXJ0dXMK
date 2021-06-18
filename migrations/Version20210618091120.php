<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20210618091120 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Добавляем соль';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE users ADD salt VARCHAR(255) NOT NULL');
        $this->addSql('COMMENT ON COLUMN users.salt IS \'Соль\'');
    }

    public function down(Schema $schema): void
    {
        $this->addSql('ALTER TABLE users DROP salt');
    }
}
