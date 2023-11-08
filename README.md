# stockit_mobile
# Assignment 7
## Answers

### 1.  What are the main differences between stateless and stateful widget in Flutter?
A key characteristic of StatelessWidget is its inability to hold mutable data internally. It does not have a setState method, which is pivotal in Flutter for notifying the framework of state changes. Instead, when the properties passed to a StatelessWidget change, it leads to a rebuild of the widget, creating a new instance with the updated properties. This approach guarantees a clear separation of concerns and enforces the principle of immutability.

In practice, StatelessWidget is often used to represent elements of an application's UI that do not change over time. These can include textual information, icons, images, and other components that remain constant throughout the user's interaction with the app. Because StatelessWidgets don't manage mutable state, they are generally more efficient in terms of performance, requiring fewer resources to render.

On the other hand, StatefulWidget stands in stark contrast to its stateless counterpart. A StatefulWidget has an associated State object that allows it to maintain mutable state. This internal state can change over time, making StatefulWidget an appropriate choice for components of the UI that need to respond to user interactions, data changes, or other dynamic factors.

The setState method plays a pivotal role in the functionality of StatefulWidget. When changes in the widget's state occur, developers use setState to notify Flutter that a rebuild is necessary. This mechanism informs the framework to update the UI to reflect the modified state. Consequently, StatefulWidget is often chosen for building dynamic UIs, interactive elements, forms, and any component that requires alterations in appearance or behavior.

### 2.  Explain all widgets that you used in this assignment.
#### In `menu.dart` file
1. **Scaffold Widget**: Used for establishing the basic page structure, including the `AppBar` and primary content.

2. **SingleChildScrollView Widget**: Enables scrolling when the content exceeds the screen's boundaries.

3. **Column and Child Widgets**: Responsible for organizing content with padding and arranging it vertically.

4. **Icon, Text, and Snackbar Widgets**: These widgets display icons and text within the cards and show messages in response to user interactions.

#### In `main.dart` file
1. **MaterialApp Widget**: Configures the project's design and specific settings, serving as the central point for defining the project's appearance.

2. **ThemeData Widget**: Defines the overall theme, encompassing features like colors and the material3 design in this project.

3. **MyApp Widget**: Acts as the core of the application, providing structural support and designating the initial page.

4. **MyHomePage Widget**: A custom widget representing the primary screen of the application, housing essential functionality and features.


### 3.  Explain how you implemented the checklist above step-by-step (not just following the tutorial).
#### 1. Creating an Empty Folder:
To start this Flutter project, I began by creating an empty folder. This folder would serve as the local directory where all project files and assets would be stored. In addition to creating the folder, I set up an empty Git repository by running the "git init" command in the terminal. This Git repository would help in version control and collaboration.

#### 2. Initializing the Flutter Project:
With the empty folder in place, I proceeded to initialize the Flutter project. This involved running the "flutter create" command in the terminal. During this step, I named the project "stockit_mobile," which was in alignment with the requirements and objectives of my previous assignment.

#### 3. Project Organization and Customization:
The core of this Flutter application is divided between two primary files: "menu.dart" and "main.dart." These files play distinct roles in configuring and running the app. Let's explore each of them individually:

- "menu.dart":

In this file, I defined the core functionality of the application. The class "MyApp" extends "StatelessWidget" and acts as the entry point for the app. It sets up key components, including a list of "ShopItem" objects. Each "ShopItem" represents a button in the app, with associated properties such as the button's name, icon, and background color (e.g., orange, brown, or yellow).
The "MyHomePage" class is another "StatelessWidget" responsible for representing the main page of the application. It takes the list of "ShopItem" objects as a parameter and configures the overall structure of the app. This structure includes an app bar with the title "Shopping List" and a scrollable body achieved with the "SingleChildScrollView" widget. Within this body, I arranged the elements using "Padding," "Column," and "GridView.count," facilitating the display of the shop name and a grid of buttons.
The "ShopItem" class serves as a data model, defining the properties of each button, such as its name, icon, and background color.
"ShopCard" is a custom "StatelessWidget" class used to create cards that represent the buttons in the grid. Each card features an icon, text, and a background color (e.g., orange, brown, or yellow). I utilized the "InkWell" widget to make the card tappable, providing visual feedback when clicked. When a card is tapped, it triggers the display of a "SnackBar" at the bottom of the screen with a message indicating which button was pressed, along with its associated background color.

- "main.dart":

This file serves as the entry point for the Flutter application. The "MyApp" class, which extends "StatelessWidget," defines the root of the app. It configures various aspects of the app's appearance, including the title, theme, and settings. Notably, the "MaterialApp" widget is initialized in this class, which serves as the foundation for the entire app. It specifies the initial page as "MyHomePage" and sets the theme color to indigo. Additionally, it enables the use of "material3," Google's prominent material design system.
The "MyHomePage" class is instantiated in the "home" property of the "MyApp" class. Here, I provide a list of "ShopItem" objects, each representing a button in the app. These buttons are identical to those defined in "menu.dart," including their names, icons, and their associated background colors (e.g., orange, brown, or yellow).
In summary, this project encompasses the organization and customization of a Flutter application named "stockit_mobile." The app is designed to display three functional buttons, each with distinct icons and background colors (orange, brown, or yellow), along with click actions. The project is divided into "menu.dart," where the core functionality is defined, and "main.dart," serving as the entry point and responsible for configuring the app's appearance and initializing the main page with the list of buttons, each with its individual background color. Together, these files create a user-friendly shopping list experience.