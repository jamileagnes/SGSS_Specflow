using OpenQA.Selenium;
using System;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class LembrarSenha_SemSenhaGeradaAnteriormenteSteps
    {
        IWebDriver browser;

        [Given(@"informo no campo login do usuário a @IE, válida e sem senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioAIEValidaESemSenhaGeradaAnteriormente()
        {
            var loginUsuario = this.browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input"));
            loginUsuario.SendKeys("8861107900");
        }
        
        [Given(@"informo no campo login do usuário a @CPF, válido e sem senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioACPFValidoESemSenhaGeradaAnteriormente()
        {
            var loginUsuario = this.browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input"));
            loginUsuario.SendKeys("01849595518");
        }
        
        [Given(@"informo no campo login do usuário a @CNPJ, válido e sem senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioACNPJValidoESemSenhaGeradaAnteriormente()
        {
            var loginUsuario = this.browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input"));
            loginUsuario.SendKeys("475693300016400");
        }
        
        [Given(@"informo no campo login do usuário a @CRC, válido e sem senha gerada anteriormente")]
        public void DadoInformoNoCampoLoginDoUsuarioACRCValidoESemSenhaGeradaAnteriormente()
        {
            var loginUsuario = this.browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input"));
            loginUsuario.SendKeys("56587PRT100");
        }
        
        [When(@"o sistema exibe mensagem ""(.*)"" e opção de geração de senha\.")]
        public void QuandoOSistemaExibeMensagemEOpcaoDeGeracaoDeSenha_(string p0)
        {
            ScenarioContext.Current.Pending();
        }
        
        [When(@"solicito termo de geração de senha na respectiva opção")]
        public void QuandoSolicitoTermoDeGeracaoDeSenhaNaRespectivaOpcao()
        {
            ScenarioContext.Current.Pending();
        }
        
        [Then(@"sistema permite geração de Termo, com sucesso\.")]
        public void EntaoSistemaPermiteGeracaoDeTermoComSucesso_()
        {
            ScenarioContext.Current.Pending();
        }
    }
}
