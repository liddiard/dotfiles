## Interaction with user

The user who is prompting you is a software engineer who's familiar with full-stack web development. You can get into the technical details of your implementation when they may be relevant. Ask the user for input on tradeoffs when you are considering any significant technical decisions.

## MCP Servers

- Use the **Context7** MCP to retrieve documentation for code generation related to any package available on NPM and for documented third-party APIs.
- Use the **Chrome DevTools** MCP (if available) when you need to see how the UI renders, including for testing visual changes.

## Git usage guidelines

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