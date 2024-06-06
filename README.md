# Pharmaceutical/Biotech Database Management System

## 🚀 Project Name: PharmaBioDBMS

This project contains SQL queries for a pharmaceutical/biotech database management system. It includes queries for creating, reading, updating, and deleting data related to clinical trials, compounds, researchers, patents, research articles, and companies.

## Requirements

- [XAMPP](https://www.apachefriends.org/index.html) (with Apache & MySQL components checked)
- Localhost access to phpMyAdmin for database management

## Instructions

1. Install XAMPP and ensure Apache and MySQL components are checked during installation.
2. Start the Apache and MySQL services in XAMPP.
3. Access phpMyAdmin via localhost to manage the MySQL database.
4. Execute the provided SQL queries in phpMyAdmin to populate and manipulate the database.

## Database Schema

The database consists of the following tables:

- `clinical_trials`: Details of clinical trials including trial ID, compound ID, start date, end date, and trial phase.
- `companies`: Information about pharmaceutical/biotech companies including company ID, company name, and headquarters location.
- `compounds`: Data on compounds including compound ID, compound name, chemical structure, molecular weight, and supplier ID.
- `patents`: Patent details such as patent ID, patent title, associated compound ID, and filing date.
- `researchers`: Information about researchers including researcher ID, researcher name, and affiliation.
- `research_articles`: Titles, authors, and publication dates of research articles including article ID, title, author ID, and publication date.
