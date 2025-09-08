import type { Site, Metadata, Socials } from "@types";

export const SITE: Site = {
  NAME: "ean",
  EMAIL: "eanpraha@gmail.com",
  NUM_POSTS_ON_HOMEPAGE: 5,
  NUM_WORKS_ON_HOMEPAGE: 5,
  NUM_PROJECTS_ON_HOMEPAGE: 5,
};

export const HOME: Metadata = {
  TITLE: "Home",
  DESCRIPTION: "eanp blog",
};

export const BLOG: Metadata = {
  TITLE: "Blog",
  DESCRIPTION: "A collection of my articles.",
};

export const SOCIALS: Socials = [
  {
    NAME: "github",
    HREF: "https://github.com/eanp"
  },
  {
    NAME: "linkedin",
    HREF: "https://www.linkedin.com/in/eanp",
  }
];
