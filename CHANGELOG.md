# 📓 Changelog - Clara yEma

All notable changes to this project will be documented here.  
This project follows a **learning-by-doing approach**, so commits are grouped into meaningful milestones rather than strict semantic versioning.

---

## [Unreleased]
- UI components (cards, headers, buttons) to be added.
- Home screen with recipe list.
- Timer screen with custom progress animation.
- Recipe tips integration.

---
## [0.2.0] - 2025-09-07
### Added
- Created reusable `AppHeader` component with logo, responsive across iPhone and iPad.
- Implemented full-width `RecipeCard` component:
  - Yolk badge as vector with flexible tones.
  - Title + cooking time in a single line.
  - Description text grows dynamically with content.
  - Chevron aligned consistently with text block.
- Structured `HomeView` to display recipes using the new reusable components.

### Changed
- Improved spacing and layout to better reflect original Figma design.

---

## [0.1.0] - 2025-09-06
### Added
- Initial project bootstrap with SwiftUI architecture.
- Theme system with design tokens (colors, typography).
- Custom font integration (Fredoka family).
- Basic navigation structure and initial placeholder views.

## [0.1.0] - 2025-09-07
### Added
- ✅ Bootstrapped **SwiftUI app structure** with MVVM mindset in mind.
- ✅ Created `Shared/Theme` to centralize **colors (HEX-based)** and **typography tokens**.
- ✅ Integrated **Fredoka font family** with custom weights and reusable text styles.
- ✅ Verified app compiles with **no errors** and runs on simulator.

### Notes
This is the very first milestone: project setup + theming foundation.  
The goal was to prepare the ground for future UI components and screens.

---

## [0.0.1] - 2025-09-06
### Added
- ✅ Initial Xcode project created using SwiftUI template.
- ✅ Repository initialized with `.gitignore` and first commit.
- ✅ Decided on **project architecture strategy** (MVVM-friendly folder structure).
- ✅ Added remote GitHub repository and linked local project.

### Notes
This marks the **birth of Clara yEma** as a real app.  
The focus was on **setup and architecture decisions** before jumping into UI.
