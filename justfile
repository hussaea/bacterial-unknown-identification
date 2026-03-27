# Install dependencies for both app and editor
install:
    npm install
    npm install --prefix editor

# Run the main app dev server
dev:
    npm run dev

# Run the editor dev server
dev-editor:
    npm run dev --prefix editor

# Build the main app
build:
    npm run build

# Build the main app as a single self-contained file
build-single:
    npm run build:single

# Build the editor
build-editor:
    npm run build --prefix editor

# Build everything
build-all: build build-editor

# Preview the built main app
preview:
    npm run preview

# Preview the built editor
preview-editor:
    npm run preview --prefix editor

# Lint the main app
lint:
    npm run lint
