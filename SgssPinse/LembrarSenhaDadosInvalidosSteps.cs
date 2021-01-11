using OpenQA.Selenium;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class LembrarSenha_DadosInvalidosSteps
    {
        private readonly IWebDriver _browser;

        public LembrarSenha_DadosInvalidosSteps(IWebDriver browser)
        {
            _browser = browser;
        }

        [Given(@"informo no campo login do usuário dados inválidos")]
        public void DadoInformoNoCampoLoginDoUsuarioDadosInvalidos()
        {
            _browser.FindElement(By.Name("codigoUsuario")).SendKeys("9999999999999999999999");
        }
    }
}
