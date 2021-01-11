using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class GerarNovoTermoParaContador_ComCadastroAtivoSteps
    {
        readonly IWebDriver _browser;

        public GerarNovoTermoParaContador_ComCadastroAtivoSteps(IWebDriver browser)
        {
            _browser = browser;
        }

        [Given(@"seleciono a opção Contador")]
        public void DadoSelecionoAOpcaoContador()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[2]/label[3]/input")).Click();
        }
        
        [When(@"acesso a opção Solicitação")]
        public void QuandoAcessoAOpcaoSolicitacao()
        {

            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-menu/nav/aslib-menu-item/ul[3]/li/a")).Click();
        }
        
        [When(@"os campos CRC, UF, Situação e Tipo com dados válidos")]
        public void QuandoOsCamposCRCUFSituacaoETipoComDadosValidos()
        {
            _browser.FindElement(By.Name("crc")).SendKeys("22479");

            _browser.FindElement(By.CssSelector("select.form-control.ng-pristine.ng-invalid.ng-touched")).GetCssValue("BA");

            _browser.FindElement(By.Name("situacao")).GetAttribute("originario");

            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[4]/div[2]/select")).GetAttribute("profissional");
        }
        
        [When(@"informo o CPF que já possua usuário internet ou senha ativa")]
        public void QuandoInformoOCPFQueJaPossuaUsuarioInternetOuSenhaAtiva()
        {
            _browser.FindElement(By.Name("cpfContador")).SendKeys("787.023.805-87");
        }
        
        [When(@"informo o CNPJ que já possua usuário internet ou senha ativa")]
        public void QuandoInformoOCNPJQueJaPossuaUsuarioInternetOuSenhaAtiva()
        {
            _browser.FindElement(By.Name("cnpjContador")).SendKeys("");
        }
        
        [Then(@"o sistema exibe tela com opções de usuários")]
        public void EntaoOSistemaExibeTelaComOpcoesDeUsuarios()
        {
            var contador = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[2]/label[3]/b"));
            Assert.AreEqual("Contador", contador);

            var contribuinteInscrito = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[2]/label[1]/b"));
            Assert.AreEqual("Contribuinte Inscrito", contribuinteInscrito);

            var contribuinteNaoInscrito = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[2]/label[2]/b"));
            Assert.AreEqual("Contribuinte Não Inscrito", contribuinteNaoInscrito);
        }
        
        [Then(@"campos para preenchimento de dados equivalente a escolha do tipo de usuário")]
        public void EntaoCamposParaPreenchimentoDeDadosEquivalenteAEscolhaDoTipoDeUsuario()
        {
            var inscricaoEstadual = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[3]/div[1]/label"));
            Assert.AreEqual("Inscrição Estadual:", inscricaoEstadual);

            var cnpj = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[3]/div[3]/label[1]"));
            Assert.AreEqual("CNPJ:", cnpj);

            var cpf = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-solicita-senha/form/div[3]/div[3]/label[2]"));
            Assert.AreEqual("CPF:", cpf);
        }
        
        [Then(@"botão Avançar")]
        public void EntaoBotaoAvancar()
        {
            var btnAvancar = _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[2]/button"));
            Assert.AreEqual("Avançar", btnAvancar);
        }
        
        [Then(@"O sistema exibe a mensagem: “Usuário já existe no banco de dados da SEFAZ\. ”")]
        public void EntaoOSistemaExibeAMensagemUsuarioJaExisteNoBancoDeDadosDaSEFAZ_()
        {
            
        }
    }
}
