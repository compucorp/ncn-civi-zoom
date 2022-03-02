CREATE TABLE IF NOT EXISTS civicrm_zoom_registrants (
  `id` int unsigned NOT NULL PRIMARY KEY UNIQUE AUTO_INCREMENT  COMMENT 'Id',
  `event_id` int unsigned NOT NULL COMMENT 'FK to Event ID',
  `first_name` varchar(255),
  `last_name` varchar(255),
  `email` varchar(255),
  `emailed` int NOT NULL  DEFAULT 0,
  CONSTRAINT FK_civicrm_zoom_registrants_event_id FOREIGN KEY (`event_id`) REFERENCES `civicrm_event`(`id`) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE UNIQUE INDEX Idx_event_id_email ON civicrm_zoom_registrants (event_id, email);