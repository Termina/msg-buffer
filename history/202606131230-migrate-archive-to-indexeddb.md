# Migrate Archive Storage from localStorage to IndexedDB

## Timestamp: 2026-06-13 12:30

## Context & Issue:
The application was crashing with `Uncaught QuotaExceededError: Failed to execute 'setItem' on 'Storage'` because the dialogue archive list of `msg-buffer-archive` exceeded the 5MB limit imposed on `localStorage` by browsers, specifically in Chrome side panels/extensions.

## Solution & Architectural Trade-off:
We migrated the large, ever-growing history archives to **IndexedDB**, which provides hundreds of MBs/GBs of quota storage, while keeping the main active buffer (`msg-buffer`) and settings inside `localStorage` to ensure synchronous persistence mechanics (e.g. `beforeunload`, `visibilitychange`) remain 100% reliable.

## Changes:
1. Created `lib/db.mjs` containing async helper functions `db_get` and `db_set` using standard raw browser IndexedDB APIs.
2. Imported `db-get` and `db-set` into `app.comp.container`.
3. Updated the 3 major archive CRUD handlers (`on-view-archive`, delete-archived, and `Archive all`) to use `js-await` alongside `db-get`/`db-set`.
4. Successfully verified types, compilation, and integration workflows with no regressions.
