# Install dependencies for both app and editor
install:
    bun install
    bun install --cwd editor

# Run the main app dev server
dev:
    bun run dev

# Run the editor dev server
dev-editor:
    bun run dev --cwd editor

# Build the main app
build:
    bun run build

# Build the main app as a single self-contained file
build-single:
    bun run build:single

# Build the editor
build-editor:
    bun run build --cwd editor

# Build everything
build-all: build build-editor

# Preview the built main app
preview:
    bun run preview

# Preview the built editor
preview-editor:
    bun run preview --cwd editor

# Lint the main app
lint:
    bun run lint
