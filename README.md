# proj9
> The purpose of proj9 is to showcase a clear example of the advantages of deliberate architectural design for both developers and business leaders.

## 🔥 MVVM for Mobile Applications

proj9 is a deliberate architectural statement.

## 🏛️ Software Architecture Commentary

Most mobile applications (software in general) *start* with good intentions but are written with a 'i'm here to collect a check intention'💸 and the codebase reflects that.

The result is business logic scattered across widgets (objects), API calls being made by the UI Layer, and a codebase nobody wants to touch😤

Messy code doesn't stay inside the codebase it infects the entire organization. It creates stressed out developers, stressed out CTO's, stressed out product managers, stressed out clients, and stressed out business owners. Instead of the codebase serving the business the business begins to serve the codebase. And the further you are from the code itself, the harder it is to see that the codebase is the real problem. From the outside, it may look like slow developers, missed deadlines, angry clients, engineers quitting, and overall frustration. But in reality it is a lack of intentional architectural design. 

## 📐 MVVM Benefits

- MVVM is a deliberate, scalable, production ready architectural design choice. The Flutter team at Google recommends it and it is the same architecture my team used on the Jimmy John's mobile application.

- MVVM gives you unidirectional data flow. Data moves from layer to layer through constructors. Establishing clear connections between classes. Each layer receives what it needs and nothing more. 

- MVVM gives each view (UI component) exactly one view-model. Thus each pair of view and ViewModel make up the UI layer for a single feature.

- MVVM enforces a clear folder structure. The ui_logic folder is responsible for your views and view-models. The business_logic folder is responsible for your repositories, services, and domain models.

## 🧩 Seperation of Concerns

Seperation of Concerns is a core principle in software development. It promotes modularity, scalability, and maintainability by dividing application functionality into distinct, self contained units. From a high level this means seperating your UI logic from your business logic. 

### The **business logic layer** is organized into **3 components**: 

- 🌐 **Services**
  
- 🧱 **Domain Models**
  
- 📦 **Repositories**


---
🌐 **Services**

**Services** are classes that are responsible for interacting with external APIs. Each method wraps a specific API endpoint and returns an asynchronous response. Any data that is not generated internally should be retrieved exclusively through the services layer.

---
🧱 **Domain Models**

**Domain Models** represent the structured data that the application operates on. They define the core entities of the system. 

---
📦 **Repository**

**Repositories** transform raw data (JSON) returned from a service into domain model instances. These domain model instances are then passed to the ViewModel, allowing the view (UI) to work with clean, structured application data.

---

### The **UI logic layer** is organized into **2 components**:

- 🎨 **Views**

- 🔗 **ViewModels**
___

🎨 **Views**

**Views** are responsible for rendering the user interface and handling user interaction. They listen for events such as button presses, gestures, or voice commands and forward those events to its corresponding ViewModel. 

---

🔗 **ViewModels**

**ViewModels** are responsible for managing UI logic and state. They receive domain models from the business logic layer (repository) and expose that data to the View. ViewModels also encapsulate the logic behind user interaction such as onTap. These methods are exposed to the View as callback methods.

---

🔁 **Application Data Flow**

1. Services fetch raw data from an external API endpoint.
2. Domain Model(s) are created to represent the raw data.
3. The repository receives the raw data from a service and converts it into a domain model.
4. The ViewModel receives the domain model from the repository and uses it to manage the UI state.
5. The View listens to the ViewModel and renders the UI based on the current state.





