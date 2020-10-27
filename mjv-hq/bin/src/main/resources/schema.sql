DROP TABLE IF EXISTS TB_HQ;

-- TABELA HQ --
CREATE TABLE TB_HQ (
  ID_HQ INT AUTO_INCREMENT  PRIMARY KEY,
  NOME_HQ VARCHAR(250) NOT NULL,
  CAPA_HQ VARCHAR(50) NOT NULL
);

INSERT INTO TB_HQ (NOME_HQ, CAPA_HQ) VALUES
  ('Batman', 'batman_capa.jpg'),
  ('Superman', 'superman_capa.jpg'),
  ('The Flash', 'flash_capa.jpg');
 