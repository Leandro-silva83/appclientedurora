from selenium import webdriver
import time

class elementpython:
    def __init__(self):
        self.mensagem="Oi Tudo bom?"
        self.contatos=["Amor","Mae"]
        options=webdriver.ChromeOptions()
        options.add_argument('lang=pt-br')
        self.diver=webdriver.Chrome(executable_path=r'./chromedriver.exe')
        
        def colocartexto(self):
            self.driver.get('https://guiadigital.eudora.com.br/ciclo09/')
            time.sleep(60) 
        for contato in self.contatos:
            #<input type="search" class="topbar-search" id="modSearchIpt" data-min="2" spellcheck="false">
         contato=self.driver.find_element_byxpath(f"//input[@id='{contato}']")
         time.sleep(3)
         contato.click()
         contato.send_keys[self.mensagem]


teste=elementpython()
teste.colocartexto()                  

