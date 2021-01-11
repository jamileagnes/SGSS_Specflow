using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using System;
using System.Net.Http.Headers;
using TechTalk.SpecFlow;

namespace SgssPinse
{
    [Binding]
    public class LembrarSenhaSemCadastroSteps
    {
        private readonly IWebDriver _browser;

        public LembrarSenhaSemCadastroSteps(IWebDriver browser)
        {
            _browser = browser;
        }

        [Given(@"informo no campo login do usuário a @IE, válida e sem cadastro nas bases da SEFAZ")]
        public void DadoInformoNoCampoLoginDoUsuarioAIEValidaESemCadastroNasBasesDaSEFAZ()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("8861107900");
        }
        
        [Given(@"informo no campo login do usuário a @CPF, válida e sem cadastro nas bases da SEFAZ")]
        public void DadoInformoNoCampoLoginDoUsuarioACPFValidaESemCadastroNasBasesDaSEFAZ()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("01849595518");
        }
        
        [Given(@"informo no campo login do usuário a @CNPJ, válida e sem cadastro nas bases da SEFAZ")]
        public void DadoInformoNoCampoLoginDoUsuarioACNPJValidaESemCadastroNasBasesDaSEFAZ()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("6170136300014900");
        }
        
        [Given(@"informo no campo login do usuário a @CRC, válida e sem cadastro nas bases da SEFAZ")]
        public void DadoInformoNoCampoLoginDoUsuarioACRCValidaESemCadastroNasBasesDaSEFAZ()
        {
            _browser.FindElement(By.XPath("/html/body/pinse-root/aslib/aslib-content/div/div[3]/pinse-via-termo/pinse-lembra-senha/form/div[3]/div[1]/input")).SendKeys("56587PRT100");
        }
        
        [Then(@"o sistema exibe a mensagem ""(.*)""")]
        public void EntaoOSistemaExibeAMensagem(string p0)
        {
            _browser.FindElement(By.XPath("/html/body/aslib-modal-window/div/div/div[2]/text()".ToString()));
            
            _browser.FindElement(By.XPath("/html/body/aslib-modal-window/div/div/div[3]/button")).Click();


        }
    }
}
