# SelfHealingLibrary.py

from robot.api.deco import keyword
from SeleniumLibrary import SeleniumLibrary
import sys

class SelfHealingLibrary:

    def __init__(self):
        self.se2lib = sys.modules['SeleniumLibrary.keywords.element']

    @keyword("Find Element with Self Healing")
    def find_element_with_self_healing(self, locators_list):

        if not isinstance(locators_list, list):
            raise TypeError("O argumento deve ser uma lista de localizadores.")

        for locator in locators_list:
            try:
                element = self.se2lib.find_element(locator)
                if element:
                    print(f"✅ Elemento encontrado com sucesso usando o localizador: '{locator}'")
                    return locator
            except Exception as e:
                print(f"❌ Falha ao encontrar o elemento com '{locator}'. Tentando o próximo...")
                continue

        raise ValueError("Nenhum localizador na lista encontrou o elemento. O teste falhou.")