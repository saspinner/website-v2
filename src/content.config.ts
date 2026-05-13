import { defineCollection } from "astro:content";
import { glob } from "astro/loaders";
import { z } from "astro/zod";

const blog = defineCollection({
  loader: glob({ pattern: "*.md", base: "src/posts" }),
  schema: z.object({
    title: z.string(),
    date: z.coerce.date(),
    live: z.boolean(),
    hidden: z.boolean().optional(),
  }),
});

const artifacts = defineCollection({
  loader: glob({ pattern: "**/*", base: "src/artifacts" }),
  schema: z.object({
    title: z.string().optional(),
    type: z.enum(["image", "text", "video", "audio", "other"]).default("other"),
  }),
});

export const collections = { blog, artifacts };
