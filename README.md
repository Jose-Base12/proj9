# proj9
> Flutter gives us the tools, MVVM gives us the structure. proj9 brings both together.

## 🔥 MVVM for Mobile Applications

proj9 is a deliberate architectual statement.

## 🏛️ Software Architecture Commentary

Most mobile applications (software in general) *start* with good intentions but are written with a 'i'm here to collect a check intention'💸 and the codebase reflects that.

The result is business logic scattered across widgets (objects), API calls being made by the UI Layer, and a codebase nobody wants to touch😤

Messy code doesn't stay inside the codebase it infects the entire orginization. It creates stressed out developers, stressed out CTO's, stressed out product managers, stressed out clients, and stressed out business owners. Instead of the codebase serving the business the business begins to serve the codebase. And the further you are from the code itself, the harder it is to see that the codebase is the real problem. From the outside, it may look like slow developers, missed deadlines, angry clients, engineers quiting, and overall frustration. But in reality it is a lack of intentional architectual design. 

## 📐 MVVM Benefits

- MVVM is a deliberate, scalable, production ready architectual design choice. The Flutter team at Google recommends it and it is the same architecture my team used on the Jimmy John's mobile application.

- MVVM gives you unidirectional data flow. Data moves from layer to layer through constructors. Establishing clear connections between classes. Each layer recieves what it needs and nothing more. 

- MVVM gives each view (UI component) exactly one view-model. Thus each pair of view and ViewModel make up the UI layer for a single feature.

- MVVM enforces a clear folder structure. The ui_logic folder is responsible for your views and view-models. The business_logic folder is responsible for your repositories, services, and domain models.

## 🧩 Seperation of Concerns

Seperation of Concerns is a core principle in software developement. It promotes modularity, scalability, and maintainability by dividing application functionality into distinct, self contained units. From a high level this means seperating your UI logic from you business logic. 

### The **business logic layer** is organized into **3 components**: 

- 🌐 **Services**
  
- 🧱 **Domain Models**
  
- 📦 **Repositories**


---
🌐 **Services**

**Services** are classes that are responsible for interacting with external APIs. Each method wraps a specific API endpoint and returns an asynchronous response. Any data that is not generated internally should be retrieved exclusively through the services layer.

---
🧱 **Domain Models**

**Domain Models** represent the structured data that the application operates on. They define the core entitites of the system. 

---
📦 **Repository**

**Repositories** transform raw data (json) returned from a service into domain model instances. These domain model instances are then passed to the ViewModel allowing the view (UI) to work with clean structured application data. 






