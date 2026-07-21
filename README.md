# Speed & Animal Classification App / Aplicativo de Cálculo de Velocidade e Classificação

> **Languages / Idiomas:** [Português](#português) | [English](#english)

---

<a name="português"></a>
## 🇧🇷 Português

### 📝 Descrição do Projeto
Este projeto é um aplicativo iOS desenvolvido em **SwiftUI** para calcular a velocidade média (em km/h) a partir da distância informada em quilômetros (km) e do tempo gasto em horas (h). 

Com base no resultado do cálculo, o aplicativo altera a cor do fundo de tela e exibe a imagem correspondente ao animal que representa essa faixa de velocidade:

* 🐢 **Tartaruga:** 0.00 – 9.99 km/h *(Verde Claro)*
* 🐘 **Elefante:** 10.00 – 29.99 km/h *(Azul Claro)*
* 🦩 **Avestruz:** 30.00 – 69.99 km/h *(Laranja Claro)*
* 🦁 **Leão:** 70.00 – 89.99 km/h *(Amarelo Claro)*
* 🐆 **Guepardo:** 90.00 – 130.00 km/h *(Vermelho Claro)*

Se a velocidade calculated for superior a 130 km/h, um alerta do sistema é acionado informando que a velocidade está fora do intervalo suportado.

---

### 🛠️ Tecnologias Utilizadas
- **Linguagem:** Swift
- **Framework:** SwiftUI
- **IDE:** Xcode
- **Plataforma Target:** iOS / macOS (Designed for iPad / iOS Simulator)

---

### 🚀 Como Executar o Projeto

#### Pré-requisitos
* Um computador Mac rodando **macOS**.
* **Xcode 14** ou superior instalado.

#### Passo a Passo
1. **Clonar ou Baixar o Repositório:**
   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```
2. **Abrir o Projeto no Xcode:**
   * Navegue até a pasta do projeto.
   * Dobre o clique no arquivo `.xcodeproj` (ex: `Desafio2 - 28-05.xcodeproj`).
3. **Configurar Ativos de Cor e Imagem (Assets):**
   * Garanta que o catálogo de assets (`Assets.xcassets`) contenha os conjuntos de imagens: `que`, `tartaruga`, `elefante`, `avestruz`, `leao`, e `guepardo`.
   * Verifique se as cores personalizadas estão cadastradas: `RosaClaro`, `MarromClaro`, `VerdeClaro`, `AzulClaro`, `LaranjaClaro`, `AmareloClaro` e `VermelhoClaro`.
4. **Executar no Simulador:**
   * Escolha o simulador desejado no menu superior (ex: *iPhone 15*).
   * Pressione `Cmd + R` ou clique no botão **Play (▶)** para compilar e rodar a aplicação.

---

<a name="english"></a>
## 🇬🇧 English

### 📝 Project Description
This is an iOS application developed using **SwiftUI** that calculates average speed (in km/h) based on user-provided distance (in kilometers) and time (in hours). 

Depending on the calculated speed, the app dynamically changes the screen background color and displays an image of an animal corresponding to that speed range:

* 🐢 **Turtle:** 0.00 – 9.99 km/h *(Light Green)*
* 🐘 **Elephant:** 10.00 – 29.99 km/h *(Light Blue)*
* 🦩 **Ostrich:** 30.00 – 69.99 km/h *(Light Orange)*
* 🦁 **Lion:** 70.00 – 89.99 km/h *(Light Yellow)*
* 🐆 **Cheetah:** 90.00 – 130.00 km/h *(Light Red)*

If the calculated speed exceeds 130 km/h, an alert is triggered warning that the speed is out of bounds.

---

### 🛠️ Tech Stack
- **Language:** Swift
- **Framework:** SwiftUI
- **IDE:** Xcode
- **Target Platform:** iOS / macOS (iOS Simulator)

---

### 🚀 How to Run the Project

#### Prerequisites
* A Mac computer running **macOS**.
* **Xcode 14** or higher installed.

#### Step-by-Step
1. **Clone or Download the Repository:**
   ```bash
   git clone <REPOSITORY_URL>
   ```
2. **Open the Project in Xcode:**
   * Navigate to the project folder.
   * Double-click the `.xcodeproj` file (e.g., `Desafio2 - 28-05.xcodeproj`).
3. **Verify Color & Image Assets:**
   * Ensure that your `Assets.xcassets` catalog includes the required image assets: `que`, `tartaruga`, `elefante`, `avestruz`, `leao`, and `guepardo`.
   * Ensure the named colors exist: `RosaClaro`, `MarromClaro`, `VerdeClaro`, `AzulClaro`, `LaranjaClaro`, `AmareloClaro`, and `VermelhoClaro`.
4. **Run in Simulator:**
   * Select your desired simulator target from the top bar (e.g., *iPhone 15*).
   * Press `Cmd + R` or click the **Play (▶)** button to build and run the application.
