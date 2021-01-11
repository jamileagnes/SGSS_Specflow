using BoDi;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System.Threading;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class LembrarSenhaComSenhaSteps
    {
        private readonly IObjectContainer _objectContainer;
        private IWebDriver _browser;

        public LembrarSenhaComSenhaSteps(IObjectContainer objectContainer)
        {
            _objectContainer = objectContainer;
        }

        [Given(@"que acesso a aplicação PINSE")]
        public void DadoQueAcessoAAplicacaoPINSE()
        {
            _browser = new ChromeDriver();

            _objectContainer.RegisterInstanceAs<IWebDriver>(_browser);

            _browser.Manage().Window.Maximize();

            _browser.Navigate().GoToUrl("https://tsistemasweb.sefaz.ba.gov.br/sistemas/pinse/Internet/");

        }
        
        [Given(@"informo no campo login do usuário a @IE, válida e com senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioAIEValidaEComSenhaGeradaAnteriormente()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("8861107900");
        }
        
        [Given(@"informo no campo login do usuário o @CPF, válida e com senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioOCPFValidaEComSenhaGeradaAnteriormente()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("01849595518");
        }
        
        [Given(@"informo no campo login do usuário o @CNPJ, válida e com senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioOCNPJValidaEComSenhaGeradaAnteriormente()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("780590500018800");
        }
        
        [Given(@"informo no campo login do usuário o @CRC, válida e com senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioOCRCValidaEComSenhaGeradaAnteriormente()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("26380BAO100");
        }
        
        [When(@"acesso a opção Via Termo > Lembrar Senha")]
        public void QuandoAcessoAOpcaoViaTermoLembrarSenha()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-menu/nav/aslib-menu-item/ul[2]/li/a")).Click();
            Thread.Sleep(2000);

            _browser.FindElement(By.LinkText("Lembrar Senha")).Click();
            Thread.Sleep(2000);

        }
        
        [When(@"clico no botão Avançar")]
        public void QuandoClicoNoBotaoAvancar()
        {
            _browser.FindElement(By.CssSelector("div.aslib-content-router")).Click();
            _browser.FindElement(By.CssSelector("button.btn.btn-primary")).Click();
            Thread.Sleep(5000);
        }
        
        [When(@"o sistema exibe, em modo leitura, os dados cadastrais relacionados ao usuário")]
        public void QuandoOSistemaExibeEmModoLeituraOsDadosCadastraisRelacionadosAoUsuario()
        {
            
        }
        
        [When(@"verifico os dados cadastrais exibidos")]
        public void QuandoVerificoOsDadosCadastraisExibidos()
        {
            
        }
        
        [When(@"clico no botão Confirmar")]
        public void QuandoClicoNoBotaoConfirmar()
        {
            
        }
        
        [Then(@"o sistema exibe campo para preenchimento de login de usuário e botão Avançar")]
        public void EntaoOSistemaExibeCampoParaPreenchimentoDeLoginDeUsuarioEBotaoAvancar()
        {
            _browser.FindElement(By.Name("codigoUsuario"));
            Thread.Sleep(2000);

            /*browser.FindElement(By.LinkText("button.btn.btn-primary[disable]"));
            Thread.Sleep(2000);*/
        }

        [Then(@"o sistema envia o lembrete de senha para o e-mail cadastrado do usuário e exibe a mensagem em tela: ""(.*)""")]
        public void EntaoOSistemaEnviaOLembreteDeSenhaParaOE_MailCadastradoDoUsuarioEExibeAMensagemEmTela(string p0)
        {
            
        }
        
        [Then(@"confirmo recebimento do lembrete de senha enviado pelo sistema \(remetente: webmaster@sefaz\.ba\.gov\.br\) na caixa de entrada de e-mails")]
        public void EntaoConfirmoRecebimentoDoLembreteDeSenhaEnviadoPeloSistemaRemetenteWebmasterSefaz_Ba_Gov_BrNaCaixaDeEntradaDeE_Mails()
        {
            
        }
    }
}
