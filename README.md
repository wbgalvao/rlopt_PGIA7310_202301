# <img src="https://github.com/wbgalvao/rlopt_PGIA7310_202301/blob/main/assets/app/icon-android.png" alt="drawing" width="80" height="80"/> RLOpt
## Leitura interativa do artigo [***Zeroth Order Policy Search Methods for Global Optimization Problems: An Experimental Study***](https://sol.sbc.org.br/index.php/eniac/article/view/18254)

Esse projeto é um aplicativo para Android desenvolvido usando [**Flutter**](https://flutter.dev/), que serve como avaliação para a disciplina de Fundamentos de Programação Aplicada (PGIA7310) do Programa de Pós Graduação em Informática Aplicada da UFRPE, ministrada pelo professor Gilberto Cysneiros.

A aplicação tem como objetivo proporcionar uma leitura interativa do artigo [*Zeroth Order Policy Search Methods for Global Optimization Problems: An Experimental Study*](https://sol.sbc.org.br/index.php/eniac/article/view/18254). A partir de um [`Drawer`](https://api.flutter.dev/flutter/material/Drawer-class.html) (utilizado como menu, acessível pelo canto esquerdo da [`AppBar`](https://api.flutter.dev/flutter/material/AppBar-class.html)) o usuário consegue acessar as seguintes seções:

1. Introdução
2. Background
3. Trabalhos Relacionados
4. Experimentos
5. Resultados
6. Discussão
7. Conclusão
8. Agradecimentos
9. Referências

Além das seções do artigo, pelo `Drawer` é possível também acessar a opção de fazer logout do aplicativo: Ao iniciar a aplicação, após a apresentação da [*splash screen*](https://docs.flutter.dev/platform-integration/android/splash-screen?tab=android-splash-alignment-java-tab), o usuário é direcionado para a página inicial onde é necessário fazer *login* (ou criar uma conta para o caso de novos usuários) antes de acessar o conteúdo do artigo. Ao fazer logout o usuário é redirecionado para essa tela inicial. A funcionalidade de autenticação foi criada usando a integração entre Flutter e [**`Firebase`**](https://firebase.google.com/?hl=pt-br) usando a opção de "Email e Senha".

### Links relevantes

* [Vídeo demonstrativo da aplicação](https://drive.google.com/file/d/1mfvhtjpOMAp5om3b3LapcCoPu1TTP_mx/view?usp=drive_link)
* [Vídeo de apresentação da aplicação](https://drive.google.com/file/d/1MOWLu8-vlzEFV1ssntG2rClIRrX9G96d/view?usp=sharing)
* [Apresentação da aplicação](https://drive.google.com/file/d/1MOWLu8-vlzEFV1ssntG2rClIRrX9G96d/view?usp=sharing)
