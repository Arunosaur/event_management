# Event Management System Deployment Guide

## Overview

This guide documents the deployment process for the Event Management database system. It outlines the roles, responsibilities, environments, and procedures necessary for successful database deployments.

## Team Roles and Responsibilities

- **Charlie (DBA)**: 
  - Manages database users and permissions
  - Handles database maintenance and performance tuning
  - Provides support for database access issues

- **Alex (Project Architect)**: 
  - Responsible for initial project setup (`project init`)
  - Manages the project structure and architecture
  - Makes key decisions on database design patterns

- **Dana (Data Analyst)**: 
  - Only modifies "hard SQL" (tables, indexes, sequences) in PDB_DEV
  - Responsible for data modeling and database structure
  - Works closely with developers to optimize data access patterns

- **Sophia and Bob (Developers)**: 
  - Modify "soft SQL" (procedures, packages, views) on PDB_DEV
  - Implement business logic in database code
  - Support CI/CD pipeline for database changes

- **Tester and QA**: 
  - Test and validate database changes in TEST and UAT environments
  - Create and maintain test cases for database functionality
  - Verify database behavior against requirements

## Database Schema Structure

- **Schemas:**
  - `EM` — Hard SQL objects (tables, indexes, sequences)
  - `EM_CODE` — Soft SQL objects (packages, procedures, views)

## Environment Flow

Development and deployment follow a strict progression through environments:

```
PDB_DEV → PDB_TEST → PDB_UAT → PDB_PROD
```

Each transition requires appropriate testing and approval.

## Permission Model

| Environment | Account                             | Allowed Tasks                                   |
|-------------|-------------------------------------|------------------------------------------------|
| PDB_DEV     | Dana (hard SQL), Developers (soft SQL) | Development work as per roles                 |
| PDB_TEST    | `SVC_CICD` (service account)        | Deployment and compile                         |
| PDB_UAT     | `SVC_CICD`                          | Deployment and compile                         |
| PDB_PROD    | `SVC_CICD`                          | Final deployments and compilation              |

Only the service account `SVC_CICD` has permission to deploy and compile in non-dev environments to ensure controlled releases.

## SQLcl Project Command Workflow

### Initial Setup (Project Architect Only)

```sql
project init -name event_management -schemas EM,EM_CODE
```

### Regular Development Workflow

1. **Export current database state**
   ```sql
   project export
   ```

2. **Stage changes from source or database**
   ```sql
   project stage
   ```

3. **Verify staged changes**
   ```sql
   project verify
   ```

4. **Create a release**
   ```sql
   project release -version <version>
   ```

5. **Generate deployment artifact**
   ```sql
   project gen-artifact
   ```

6. **Deploy artifact to environment**
   ```sql
   project deploy -target <PDB_TEST/UAT/PROD> -release <version>
   ```

## Environment-Specific Workflow

### PDB_DEV
- Dana and developers perform export, stage, verify, and artifact generation
- All development work happens here
- Regular testing and validation before creating releases

### PDB_TEST / PDB_UAT / PDB_PROD
- Deployment is always done by `SVC_CICD` using `project deploy` with proper approval workflows
- No direct development occurs in these environments
- Clear separation of duties between development and deployment

## GitHub Actions Integration

* Workflows reflect these stages:
  - Export, stage, verify, release, gen-artifact triggered on merges to `main`
  - Deploy to TEST, UAT, PROD with approval steps and manual triggers as appropriate
  - Automatic running of tests after deployment to TEST environment

## Handling Multiple Features

- Feature branches from `main` for individual features
- Pull requests merged to `main` trigger builds
- Selective promotion uses feature branching and cherry-picks to new release branches, or feature flags within database
- Clear documentation required for each feature deployment

## Rollback Procedure

- Use Liquibase rollback scripts via `project deploy -rollback` if errors detected post-deployment
- Fallback to previous release by deploying previous artifact
- Data recovery via DBA/backup if needed
- All rollbacks must be documented and reviewed

## Common Issues and Troubleshooting

- If deployment fails, check the log files for detailed error messages
- Verify that service accounts have appropriate permissions
- Ensure all dependencies are met before deployment
- Contact DBA for assistance with complex deployment issues

