DROP TABLE IF EXISTS TB_HQ;

-- TABELA HQ --
CREATE TABLE TB_HQ (
  ID_HQ INT AUTO_INCREMENT  PRIMARY KEY,
  NOME_HQ VARCHAR(250) NOT NULL,
  CAPA_HQ VARCHAR(50) NOT NULL,
  DESCRICAO_HQ VARCHAR(250) NOT NULL
);

INSERT INTO TB_HQ (NOME_HQ, CAPA_HQ, DESCRICAO_HQ) VALUES
  ('Spider-Man Gedddon', 'hq1.jpg', 'Spider-Man no mundo rock'),
  ('Spide-Man Geddon', 'hq2.jpg', 'Spide-Man de volta ao Queens'),
  ('Ultimate Spider-Man', 'hq3.jpg', 'Spider-Man da nova geração');
 