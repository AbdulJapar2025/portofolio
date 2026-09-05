// @ts-check
import { defineConfig } from "astro/config";
import react from "@astrojs/react";
import tailwindcss from "@tailwindcss/vite";

// https://astro.build/config
export default defineConfig({
  site: 'https://abduljapar2025.github.io',
  base: '/portofolio',
  integrations: [react()],
  vite: {
    plugins: [tailwindcss()],
  },
});
