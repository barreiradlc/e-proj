import 'package:flutter/material.dart';
import 'package:web_view/Parcial/CardItem.dart';
import 'package:web_view/Telas/Parcial/Carousel.dart';
import '../../Funcoes/UserData.dart';
import '../Parcial/Projetos.dart';

// var jwt  = void_getJWT();
// print(jwt);
class Termos extends StatefulWidget {
  @override
  TermosState createState() => TermosState();
}

class TermosState extends State<Termos> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("EPROJ - Termos de uso", style: TextStyle(
            color: Colors.white
          )),
        ),
        body: ListView(
          // padding: EdgeInsets.symmetric(vertical: 30),
          children: <Widget>[
            CardItem([
              """1""",
              """Obrigado por usar a EPROJ!""",
              """Estes Termos de Serviço ("Termos") regem seu acesso e uso do site, aplicativos e APIs da EPROJ ("EPROJ" ou "Serviço"). Leia estes Termos com atenção e entre em contato conosco se tiver alguma dúvida. Ao acessar ou usar o Pinterest, você concorda em ficar vinculado por estes Termos e nossa Política de Privacidade.""",
              Icons.add_to_home_screen,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """2""",
              """A empresa""",
              """EPROJECT - PROJETOS E CONSTRUÇÕES LTDA-ME, Cnpj 22.371.681/0001-37, Setor de Grandes Áreas Norte Quadra 609 Módulo D - Asa Norte, Distrito Federal.
""",
              Icons.alternate_email,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """3""",
              """Nosso serviço""",
              """Nossa plataforma ajuda seus usuários a planejarem a construção de suas casas. A EPROJ é uma empresa que desenvolve projetos de arquitetura e engenharia para edificações de pequeno porte e os oferece de forma totalmente online. Para isso, disponibilizamos um portfólio de modelos arquitetônicos e opções de design de interiores para que o cliente crie a o projeto que mais lhe agrada. Para fornecer nosso serviço, precisamos ser capazes de identificar você e seus interesses. Algumas das coisas que mostramos a você poderão ser promovidas por anunciantes. Como parte do nosso serviço, tentamos garantir que o conteúdo promovido seja relevante e interessante para você. Você pode identificar o conteúdo promovido porque ele será claramente identificado.""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """4""",
              """Usando o Aplicativo EPROJ""",
              """* Quem pode usar a EPROJ

Você pode usar nosso aplicativo e plataforma apenas se puder legalmente formar um contrato vinculativo com a EPROJ e somente em conformidade com estes Termos e todas as leis aplicáveis. Ao criar sua conta da EPROJ, você deve nos fornecer informações precisas e completas. É somente permitido o uso de nossos serviços caso ousuário tenha mais de 18 anos de idade ou condições de consentir no processamento de dados sob as leis nacionais vigentes. O uso da EPROJ pode incluir o download de software para o seu computador, telefone, tablet ou outro dispositivo. Você concorda que podemos atualizar automaticamente esse software, e estes Termos se aplicarão a quaisquer atualizações.

		
* Nossa licença para você

* Sujeito a estes Termos e nossas políticas , concedemos a você uma licença limitada, não exclusiva, intransferível e revogável para usar nosso Serviço.
		
* Uso comercial da EPROJ

* Se você abrir uma conta para uma empresa, organização ou outra entidade, "você" inclui você e essa entidade e promete que está autorizado a conceder todas as permissões e licenças fornecidas nestes Termos e vincular a entidade a estes Termos, e que você concorda com estes Termos em nome da entidade.""",
              Icons.assignment,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """5""",
              """Seu conteúdo""",
              """* Publicando conteúdo

* A EPROJ permite que você publique conteúdo, incluindo fotos, comentários, links e outros materiais. Tudo o que você publicar ou disponibilizar na EPROJ é chamado de "Conteúdo do Usuário". Você retém todos os direitos e é o único responsável pelo Conteúdo do Usuário que publica na EPROJ.

* Como a EPROJ pode usar seu conteúdo

* Você concede a EPROJ uma licença mundial não exclusiva, isenta de royalties, transferível, sublicenciável, para usar, armazenar, exibir, reproduzir, salvar, modificar, criar trabalhos derivados, executar e distribuir seu Conteúdo do usuário na EPROJ apenas para o fins de operação, desenvolvimento, fornecimento e uso da EPROJ. Nada nestes Termos restringe outros direitos legais que a EPROJ pode ter para o Conteúdo do Usuário, por exemplo, sob outras licenças. Reservamo-nos o direito de remover ou modificar o Conteúdo do Usuário ou alterar a forma como é usado na EPROJ, por qualquer motivo. Isso inclui o Conteúdo do usuário que acreditamos violar estes Termos, nossas Diretrizes da comunidade ou qualquer outra política.

* Por quanto tempo mantemos seu conteúdo

* Após o encerramento ou desativação da sua conta, ou se você remover qualquer Conteúdo do Usuário da EPROJ, poderemos mantê-lo por um período razoável de tempo para fins de backup, arquivamento ou auditoria. A EPROJ e seus usuários podem reter e continuar a usar, armazenar, exibir, reproduzir, redigitar, modificar, criar trabalhos derivados e executar qualquer Conteúdo do Usuário.

* Feedback que você fornece

* Valorizamos a audição de nossos usuários e sempre estamos interessados em aprender maneiras de tornar a EPROJ mais incrível. Se você optar por enviar comentários, idéias ou feedback, concorda que somos livres para usá-los sem nenhuma restrição ou compensação para você. Ao aceitar o seu envio, a EPROJ não renuncia a nenhum direito de usar feedback semelhante ou relacionado anteriormente conhecido pela EPROJ, desenvolvido por seus funcionários ou obtido  de outras fontes que você.""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """6""",
              """Segurança""",
              """* Preocupamo-nos com a segurança de nossos usuários. Enquanto trabalhamos para proteger a segurança do seu conteúdo e conta, a EPROJ não pode garantir que terceiros não autorizados não sejam capazes de anular nossas medidas de segurança. Pedimos que você mantenha sua senha segura. Notifique-nos imediatamente sobre qualquer comprometimento ou uso não autorizado da sua conta.""",
              Icons.assignment,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """7""",
              """Links, sites e serviços de terceiros""",
              """* A PROJ pode conter links para sites de terceiros, anunciantes, serviços, ofertas especiais ou outros eventos ou atividades que não são de propriedade ou controlados pela EPROJ. Não endossamos ou assumimos qualquer responsabilidade por sites, informações, materiais, produtos ou serviços de terceiros. Se você acessar qualquer site, serviço ou conteúdo de terceiros da EPROJ, você o faz por seu próprio risco e concorda que o Pinterest não tem nenhuma responsabilidade decorrente do uso ou acesso a sites, serviços ou conteúdos de terceiros.""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """8""",
              """Rescisão""",
              """* A EPROJ pode rescindir ou suspender o seu direito de acessar ou usar o Pinterest por qualquer motivo, mediante notificação apropriada. Podemos encerrar ou suspender seu acesso imediatamente e sem aviso prévio, se tivermos um bom motivo. Após o término, você continua vinculado às Seções 4 e 9 destes Termos.""",
              Icons.assignment,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """9""",
              """Indenização""",
              """* Se você usa a EPROJ para fins comerciais (ou seja, não é consumidor) sem concordar com nossos Termos de Negócios, você concorda em indenizar e isentar a EPROJECT - PROJETOS E CONSTRUÇÕES LTDA-ME, suas afiliadas e seus respectivos diretores, diretores, funcionários e agentes, de quaisquer reclamações, ações, processos, disputas, demandas, responsabilidades, danos, perdas, custos e despesas, incluindo, sem limitação, honorários legais e contábeis razoáveis (incluindo custos de defesa) reclamações, processos ou processos movidos por terceiros), de qualquer forma relacionada ao seu acesso ou uso do nosso Serviço, ao Conteúdo do Usuário ou à violação de qualquer um destes Termos.""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """10""",
              """Isenções de responsabilidade""",
              """* Nosso serviço e todo o conteúdo da EPROJ são fornecidos "no estado em que se encontram", sem garantia de qualquer tipo, seja expressa ou implícita.

* A EPROJ não se responsabiliza e não se responsabiliza por qualquer Conteúdo do Usuário que você ou qualquer outra pessoa ou terceiros publique ou envie usando nosso Serviço. Você entende e concorda que pode ser exposto a Conteúdo do Usuário impreciso ou inadequado para o seu objetivo.""",
              Icons.assignment,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """11""",
              """Limitação de responsabilidade""",
              """* ATÉ O MÁXIMO PERMITIDO PELA LEI, A EPROJ NÃO SERÁ RESPONSÁVEL POR QUAISQUER DANOS INDIRETOS, INCIDENTAIS, ESPECIAIS, CONSEQÜENCIAIS OU PUNITIVOS, OU QUALQUER PERDA DE LUCROS OU RECEITAS, QUANTO INCORRETA DIRETAMENTE OU INDIRETAMENTE, OU QUALQUER PERDA, OU OUTRAS PERDAS INTANGÍVEIS, RESULTANTES DE (A) SEU ACESSO OU USO DE OU INABILIDADE DE ACESSAR OU USAR O SERVIÇO; (B) QUALQUER CONDUTA OU CONTEÚDO DE TERCEIROS NO SERVIÇO, INCLUINDO SEM LIMITAÇÃO, QUALQUER CONDUTA DEFAMATÓRIA, OFENSIVA OU ILEGAL DE OUTROS USUÁRIOS OU TERCEIROS; OU (C) ACESSO, USO OU ALTERAÇÃO NÃO AUTORIZADOS DE SEU CONTEÚDO.""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
            CardItem([
              """12""",
              """Arbitragem""",
              """* Para qualquer disputa que você tenha com a EPROJ, você concorda em entrar em contato primeiro e tentar resolvê-la informalmente. Se precisarmos entrar em contato com você, faremos isso no endereço de e-mail da sua conta da EPROJ. Se a EPROJ não tiver sido capaz de resolver a disputa com você informalmente, cada um de nós concordará em resolver qualquer reclamação, disputa ou controvérsia (excluindo reclamações por medidas cautelares ou outras medidas equitativas) decorrentes ou relacionadas a ou relacionadas a estes Termos por arbitragem vinculativa ou (para reivindicações qualificadas) em um tribunal de pequenas causas.

* A arbitragem é uma maneira mais informal de resolver nossas divergências do que uma ação judicial. Por exemplo, a arbitragem usa um árbitro neutro em vez de um juiz ou júri, envolve descobertas mais limitadas e está sujeita a uma revisão muito limitada pelos tribunais. Embora o processo seja mais informal, os árbitros podem conceder os mesmos danos e medidas que um tribunal pode conceder. Você concorda que, ao concordar com estes Termos de Serviço, a Lei Federal de Arbitragem (Lei 9.307/1996) rege a interpretação e a aplicação desta disposição, e que você e a EPROJ renunciam ao direito a um julgamento por júri ou a participar de uma ação coletiva. O árbitro tem autoridade exclusiva para resolver qualquer controvérsia relacionada à interpretação ou  aplicabilidade deste contrato de arbitragem vinculativo.

* A menos que você e a EPROJ concordem em contrário, a arbitragem será conduzida no município (ou paróquia) onde estiver localizada a matriz da EPROJ.  Independentemente da maneira pela qual a arbitragem é conduzida, o árbitro deve emitir uma decisão por escrito fundamentada explicando as constatações e conclusões essenciais nas quais a sentença se baseia, e qualquer julgamento sobre a sentença proferida pelo árbitro pode ser submetido a qualquer tribunal da jurisdição competente. Nada nesta Seção impedirá que uma das partes busque uma medida cautelar ou outra eqüitativa junto aos tribunais, inclusive em questões relacionadas à segurança dos dados, propriedade intelectual ou acesso não autorizado ao Serviço.""",
              Icons.assignment,
              Colors.blue,
              Colors.white,
            ]),
            CardItem([
              """13""",
              """Termos gerais""",
              """* Procedimentos de notificação e alterações destes Termos

* Reservamo-nos o direito de determinar a forma e os meios de fornecer notificações a você, e você concorda em receber avisos legais eletronicamente, se for o que decidirmos. Podemos revisar estes Termos de tempos em tempos e a versão mais atual será sempre publicada em nosso site. Se uma revisão, a nosso critério, for material, notificaremos você. Ao continuar a acessar ou usar a EPROJ depois que as revisões entrarem em vigor, você concorda em ficar vinculado aos novos Termos. Se você não concorda com os novos termos, pare de usar a plataforma ou aplicativo EPROJ.

* Exercício

* Estes Termos, e quaisquer direitos e licenças concedidos neste documento, não podem ser transferidos ou atribuídos por você, mas podem ser atribuídos pela EPROJ sem restrições. Qualquer tentativa de transferência ou cessão em violação deste documento será nula e sem efeito.

* Contrato completo / separabilidade

* Estes Termos, juntamente com a Política de Privacidade e quaisquer alterações e quaisquer acordos adicionais que você possa celebrar com o Pinterest constituirão o contrato inteiro entre você e a EPROJ sobre o Serviço. Se qualquer disposição destes Termos for considerada inválida, ela será limitada ou eliminada na extensão mínima necessária, e as demais disposições destes Termos permanecerão em pleno vigor e efeito.

* Renúncia

* Nenhuma renúncia a qualquer termo destes Termos será considerada uma renúncia adicional ou contínua a esse termo ou a qualquer outro termo, e a falha da EPROJ em afirmar qualquer direito ou disposição sob estes Termos não constituirá uma renúncia a esse direito ou disposição.
""",
              Icons.assignment,
              Colors.green,
              Colors.white,
            ]),
          ],
        ));
  }
}
