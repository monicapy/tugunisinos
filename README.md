tugunisinos: Classe LaTeX para Monografias no Padrão da UNISINOS
===================================================

Neste pacote você encontra os arquivos necessários para formatar sua
monografia no padrão da UNISINOS usando LaTeX.  A última versão desse
pacote sempre pode ser encontrada em
http://sites.google.com/site/tugunisinos.

Os arquivos necessários são:
- UNISINOSmonografia.cls: classe de documento LaTeX;
- unisinos.bst: estilo de referências bibliográficas.

Para usá-los, basta copiar os dois arquivos para a pasta onde se encontra
o documento .tex principal.

Dentro do pacote há também um exemplo de uso da classe, composto pelos
arquivos:
- exemplo.tex: arquivo do documento principal (que contém o texto);
- exemplo.bib: base de referências bibliográficas;
- escrita.{eps,jpg}: exemplo de imagem inserida no documento. A versão .eps
  é usada quando se processa o documento usando o comando "latex".  A
  versão .jpg é usada com "pdflatex";
- exemplo.pdf: resultado final.

Para processar o documento de exemplo, basta fazer:
pdflatex exemplo
bibtex exemplo
pdflatex exemplo
pdflatex exemplo

Isso deve recriar o arquivo exemplo.pdf, que é o documento final.  Esteja
atento para mensagens de erro e avisos que possam aparecer.

Em caso de dúvida, envie mensagem para o grupo "tugunisinos" em
http://groups.google.com/group/tugunisinos