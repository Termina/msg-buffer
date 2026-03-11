import { defineConfig } from 'vite';

export default defineConfig({
  build: {
    minify: false,
    rollupOptions: {
      output: {
        manualChunks(id) {
          if (id.includes('@google/genai')) {
            return 'genai';
          }

          if (id.includes('/openai/') || id.includes('/openai@')) {
            return 'openai';
          }

          if (
            id.includes('/node_modules/respo') ||
            id.includes('/node_modules/reel') ||
            id.includes('/node_modules/memof') ||
            id.includes('/node_modules/@calcit/procs')
          ) {
            return 'vendor-core';
          }
        }
      }
    }
  }
});
