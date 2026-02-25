## Sofy-Web-Schedule-Run-Agent

This repository contains a GitHub Action that allows you to execute a Sofy Web Schedule directly from your GitHub workflow.

You can trigger a Sofy web task by providing your Schedule Run GUID and Subscription Key.

## Required Inputs

1️-Subscription Key

You must provide your Sofy subscription key.

You can find it by:

Logging into Sofy

Navigating to Settings

Opening the Integration section (Authentication dropdown)

2-Schedule run guid

The unique identifier of your Schedule Run.

You can find this inside your Sofy dashboard under Schedule tab.


## Usage

Add the following step in your workflow.

Make sure to include the checkout action before using the Sofy action.

- name: 'checkout'
  uses: 'actions/checkout@v2'

- name: 'Run Sofy Web Prompt'
  uses: 'SOFYDEVELOPER/Sofy-Web-Schedule-Action@main'
  with:
    schedule_run_guid: 'your_schedule_run_guid'
    subscription_key: 'your_subscription_key'

## Sample Workflow
name: Sofy Web Task

on:
  push:

jobs:
  run-sofy-task:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v2

      - name: Execute Sofy Web Prompt
        uses: SOFYDEVELOPER/Sofy-Web-Schedule-Action@main
        with:
          project_id: '69773c4d1749de90bd7b6bb4'
          subscription_key: 'YOUR_SUBSCRIPTION_KEY'
          prompt: 'Open sofy.ai. Go to login page'

## How It Works

This action:

Accepts your inputs from the workflow

Executes index.sh

Sends a POST request to Sofy’s public web agent API

Runs the provided Scheduler

## Requirements

Ubuntu runner (runs-on: ubuntu-latest)

Valid Sofy schedule_run_guid

Valid subscription_key

