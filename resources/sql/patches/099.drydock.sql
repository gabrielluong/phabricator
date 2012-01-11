CREATE DATABASE IF NOT EXISTS phabricator_drydock;

CREATE TABLE phabricator_drydock.drydock_resource (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARCHAR(64) BINARY NOT NULL,
  name VARCHAR(255) NOT NULL,
  ownerPHID varchar(64) BINARY,
  status INT UNSIGNED NOT NULL,
  blueprintClass VARCHAR(255) NOT NULL,
  type VARCHAR(64) NOT NULL,
  attributes LONGBLOB NOT NULL,
  capabilities LONGBLOB NOT NULL,
  dateCreated INT UNSIGNED NOT NULL,
  dateModified INT UNSIGNED NOT NULL,
  UNIQUE KEY (phid)
) ENGINE=InnoDB;

CREATE TABLE phabricator_drydock.drydock_lease (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  phid VARCHAR(64) BINARY NOT NULL,
  resourceID INT UNSIGNED,
  status INT UNSIGNED NOT NULL,
  until INT UNSIGNED,
  ownerPHID VARCHAR(64) BINARY,
  attributes LONGBLOB NOT NULL,
  dateCreated INT UNSIGNED NOT NULL,
  dateModified INT UNSIGNED NOT NULL,
  UNIQUE KEY (phid)
) ENGINE=InnoDB;
