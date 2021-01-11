using OpenQA.Selenium;
using System;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class LembrarSenha_CamposVaziosSteps
    {
        IWebDriver browser;

        [Given(@"mantenho o campo Login do usuário sem preenchimento")]
        public void DadoMantenhoOCampoLoginDoUsuarioSemPreenchimento()
        {
            var loginUsuario = this.browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input"));
            loginUsuario.SendKeys("");
        }
        
        [Then(@"o sistema exibe mensagem ""(.*)""")]
        public void EntaoOSistemaExibeMensagem(string p0)
        {
            ScenarioContext.Current.Pending();
        }
    }
}
