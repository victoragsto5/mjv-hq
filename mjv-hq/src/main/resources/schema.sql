DROP TABLE IF EXISTS TB_HQ;
DROP TABLE IF EXISTS TB_FEED;

-- TABELA HQ --
CREATE TABLE TB_HQ (
  ID_HQ INT AUTO_INCREMENT  PRIMARY KEY,
  NOME_HQ VARCHAR(250) NOT NULL,
  CAPA_HQ VARCHAR(50) NOT NULL,
  DESCRICAO_HQ VARCHAR(250) NOT NULL
);

INSERT INTO TB_HQ (NOME_HQ, CAPA_HQ, DESCRICAO_HQ) VALUES
  ('Spider-Man Geddon', 'hq1.jpg', 'Spider-Man no mundo rock'),
  ('Spider-Man Geddon', 'hq2.jpg', 'Spide-Man de volta ao Queens'),
  ('Ultimate Spider-Man', 'hq3.jpg', 'Spider-Man da nova geração');
 
 
--- TABELA FEED ---
CREATE TABLE TB_FEED (
  ID_NEWS INT AUTO_INCREMENT  PRIMARY KEY,
  TITULO_NEWS VARCHAR(250) NOT NULL,
  IMAGEM_NEWS VARCHAR(50) NOT NULL,
  DESCRICAO_NEWS VARCHAR(5000) NOT NULL
);

INSERT INTO TB_FEED (TITULO_NEWS, IMAGEM_NEWS, DESCRICAO_NEWS) VALUES
  ('Spider-Man Geddon chega nas bancas do Brasil!', 'hq1.jpg', 'Para escrever artigos, redações, cartas etc é preciso que o texto seja estruturado em parágrafos. Dessa forma, o parágrafo é definido como o agrupamento das frases que expressam alguma ideia ou pensamento principal e ajudam na organização a estruturação textual.'),
  ('Spider-Man Geddon é o novo sucesso dos amantes de HQs', 'hq2.jpg', 'Para escrever artigos, redações, cartas etc é preciso que o texto seja estruturado em parágrafos. Dessa forma, o parágrafo é definido como o agrupamento das frases que expressam alguma ideia ou pensamento principal e ajudam na organização a estruturação textual.'),
  ('Ultimate Spider-Man é comercializada a partir de R$30,00', 'hq3.jpg', 'Para escrever artigos, redações, cartas etc é preciso que o texto seja estruturado em parágrafos. Dessa forma, o parágrafo é definido como o agrupamento das frases que expressam alguma ideia ou pensamento principal e ajudam na organização a estruturação textual.');