## Interaction with user

The user who is prompting you is a software engineer who's familiar with full-stack web development. You can get into the technical details of your implementation when they may be relevant. Ask the user for input on tradeoffs when you are considering any significant technical decisions.

## MCP Servers

- Use the **Context7** MCP to retrieve library and API documentation. Usage details below.
- Use the **Chrome DevTools** MCP (if available) when you need to see how the UI renders, including for testing visual changes.

### Context7 MCP usage

Use the `ctx7` CLI to fetch current documentation whenever the user asks about a library, framework, SDK, API, CLI tool, or cloud service -- even well-known ones like React, Next.js, Prisma, Express, Tailwind, Django, or Spring Boot. This includes API syntax, configuration, version migration, library-specific debugging, setup instructions, and CLI tool usage. Use even when you think you know the answer -- your training data may not reflect recent changes. Prefer this over web search for library docs.

Do not use for: refactoring, writing scripts from scratch, debugging business logic, code review, or general programming concepts.

#### Steps

1. Resolve library: `npx ctx7@latest library <name> "<user's question>"` — use the official library name with proper punctuation (e.g., "Next.js" not "nextjs", "Customer.io" not "customerio", "Three.js" not "threejs")
2. Pick the best match (ID format: `/org/project`) by: exact name match, description relevance, code snippet count, source reputation (High/Medium preferred), and benchmark score (higher is better). If results don't look right, try alternate names or queries (e.g., "next.js" not "nextjs", or rephrase the question)
3. Fetch docs: `npx ctx7@latest docs <libraryId> "<user's question>"`
4. Answer using the fetched documentation

You MUST call `library` first to get a valid ID unless the user provides one directly in `/org/project` format. Use the user's full question as the query -- specific and detailed queries return better results than vague single words. Do not run more than 3 commands per question. Do not include sensitive information (API keys, passwords, credentials) in queries.

For version-specific docs, use `/org/project/version` from the `library` output (e.g., `/vercel/next.js/v14.3.0`).

If a command fails with a quota error, inform the user and suggest `npx ctx7@latest login` or setting `CONTEXT7_API_KEY` env var for higher limits. Do not silently fall back to training data.

## Git usage

- When writing commit messages, use the Convential Commits syntax style.
- If the change is non-trivial, describe it in additional detail with a commit message body.

## JavaScript & TypeScript coding guidelines

- Follow the DRY (don't repeat yourself) principle: Abstract shared logic into reusable functions.
- Always look for opportunities to simplify existing code when making changes that affect it.
- Use modern ECMAScript syntax.
- Coding style is single-quote strings, and no semicolons (except where required).
- Prefer arrow function declaration syntax, and use implicit return for single-expression functions.
- Always write/update a JSDoc-style docstring for new/modified functions.
- Avoid casting to `any`; create custom types where needed.
- Prefer functional array methods (e.g. `.map`, `.reduce`) over their imperative analogues.
- Prefer keeping objects immutable, creating new objects (e.g. with spread syntax) over mutating existing ones.
- For asynchronous operations, use `async`/`await` syntax.

## Python coding guidelines

- Use the `uv` package manager.
- Follow Black's max line length of 88 chars.
- Use modern Python syntax (3.14+).
- Use type hints for all function signatures and return types.
- Prefer f-strings everywhere.
- Double quote all strings except for those used to index into a dictionary – use single quotes for those.
- Prefer specific exception types over bare `except:` error catching.
- Write Google-style docstrings for all non-trivial functions.

## React coding guidelines

- Same guidelines as TypeScript apply, especially regarding immutable objects and functional array methods.
- Comment all `useEffect` usages to explain why it's necessary / what it's doing.
- For any even semi-expensive calculation within a component, wrap it in a `useMemo` or `useCallback` as appropriate.
- Comment all `useMemo` or `useCallback` usages to explain what it's doing.

## CSS writing guidelines

- Follow the DRY (don't repeat yourself) principle: Use CSS custom properties (variables) to avoid hardcoding values that are used in multiple places.
- Use modern CSS features and syntax, such as CSS nesting.
- Prefer the OKLCH color space for defining colors.
- Prefer EM and REM units for sizes, especially relating to text.

## HTML writing guidelines

- Always use semantic HTML elements; e.g. avoid using `<div>` if an element type exists that is more specific and appropriate to the content it contains.
- Ensure elements are accessible. This includes keyboard navigation, minimum contrast, and ARIA roles/attributes when needed.
