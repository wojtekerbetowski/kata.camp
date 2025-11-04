---
layout: base
title: "AI-Assisted Engineering Kata Ideas"
permalink: /workshop/kata-ideas/
eleventyExcludeFromCollections: true
description: "A collection of practical, hands-on kata exercises for AI-assisted engineering."
---

# AI-Assisted Engineering Kata Ideas

A collection of practical, hands-on kata exercises for software engineers looking to improve their craft with AI-assisted workflows.

---

## 1. Generate the Command Line Command You Need

**Description:** The kata shows how to use a command line utility to give you (context-rich) the command line you are looking for. The kata shows you how to set up the tool, pre-prompt the tool to give you wanted result quickly.

**Time:** 45 minutes

**Workflow:**
- Run the base docker image (Ubuntu) with AI API token configured
- Create the base prompt describing the environment
- Create the bash function, querying the AI and suggesting the command
- Attach history for richer context

---

## 2. AI-Powered Code Review Assistant

**Description:** Build a pre-commit hook that uses AI to review your code changes before they're committed. The kata teaches you how to capture git diffs, create effective review prompts, and get actionable feedback on code quality, potential bugs, and best practices.

**Time:** 45 minutes

**Workflow:**
- Set up a git repository with sample code
- Create a pre-commit hook script that captures staged changes
- Design a prompt that asks AI to review for common issues (security, performance, style)
- Parse and format AI responses into readable feedback
- Test with intentionally flawed code examples

---

## 3. Instant Documentation from Code

**Description:** Create a tool that generates README files and inline documentation by analyzing your codebase. Learn how to extract code structure, craft prompts that understand your project's context, and generate documentation that's actually useful.

**Time:** 45 minutes

**Workflow:**
- Parse a sample project structure and identify key files
- Extract function signatures, class definitions, and dependencies
- Build a context-rich prompt with code structure and purpose
- Generate README sections (setup, usage, architecture)
- Refine prompts to improve documentation quality

---

## 4. Test Case Generator from Requirements

**Description:** Transform user stories or requirements into executable test cases. This kata shows you how to parse natural language requirements, generate test scenarios, and create actual test code in your preferred framework.

**Time:** 45 minutes

**Workflow:**
- Start with sample user stories/requirements in a file
- Create a prompt template that extracts test scenarios
- Generate test case descriptions (given/when/then format)
- Convert scenarios into actual test code (Jest, pytest, etc.)
- Run generated tests against sample implementation

---

## 5. Smart Log Analyzer

**Description:** Build a tool that analyzes application logs and identifies patterns, errors, and anomalies. Learn how to chunk large log files efficiently, craft prompts for pattern recognition, and get actionable insights from noisy log data.

**Time:** 45 minutes

**Workflow:**
- Generate sample application logs with various error patterns
- Create a log chunking strategy for API token limits
- Design prompts for error classification and pattern detection
- Build a summary report of critical issues
- Add severity ranking and suggested fixes

---

## 6. Refactoring Advisor with Context

**Description:** Create an interactive tool that suggests refactoring opportunities in your code. The kata teaches you how to provide rich context about your codebase, identify code smells, and get specific refactoring suggestions with before/after examples.

**Time:** 45 minutes

**Workflow:**
- Load a legacy code sample with common code smells
- Build context by analyzing imports, dependencies, and usage
- Create prompts asking for specific refactoring suggestions
- Generate before/after code examples
- Implement a simple scoring system for refactoring priority
