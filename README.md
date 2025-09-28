
# RAG Application on Snowflake with Cortex, TruLens, and Streamlit

This project demonstrates a Retrieval-Augmented Generation (RAG) application built entirely on Snowflake. It leverages Snowflake Cortex for advanced AI and search capabilities, TruLens for observability and guardrails, and Streamlit for a user-friendly web interface.

## Overview

The application allows users to ask questions about a collection of corporate 10K reports. It uses a RAG architecture to retrieve relevant information from the documents and generate accurate answers. The entire workflow, from data ingestion to the user-facing application, is orchestrated within the Snowflake ecosystem.

## Key Features

- **RAG on Snowflake:** Implements a modern RAG pipeline using Snowflake as the primary platform.
- **Cortex for AI and Search:**
    - **Cortex LLM Functions:** Utilizes large language models (LLMs) for text generation.
    - **Cortex Search Service:** Provides semantic search capabilities to find relevant document chunks.
- **TruLens for LLM-ops:**
    - **Observability:** Tracks and evaluates the performance of the RAG application using the "RAG Triad" (context relevance, groundedness, and answer relevance).
    - **Guardrails:** Implements guardrails to filter irrelevant context and reduce hallucinations.
- **Streamlit User Interface:** Offers an interactive chat interface for users to interact with the RAG application.
- **Infrastructure as Code:** Uses Terraform to provision and manage the necessary Snowflake resources.
- **Git Integration:** Integrates with GitHub for version control and CI/CD.

## Getting Started

### Prerequisites

- A Snowflake account with the necessary privileges.
- Terraform installed.
- Python 3.8+ and pip.

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/cyberwetware/RagnRoll.git
   cd RagnRoll
   ```

2. **Set up Snowflake resources:**
   - Configure your Snowflake connection details in `terraform/snowflake.env`.
   - Initialize and apply the Terraform configuration:
     ```bash
     cd terraform
     terraform init
     terraform apply
     cd ..
     ```

3. **Install Python dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Run the SQL scripts:**
   - Execute the `.sql` files in your Snowflake account to set up the necessary roles and integrations.

5. **Run the Streamlit application:**
   ```bash
   streamlit run src/sf_streamlit_app.py
   ```

## How it Works

1. **Infrastructure:** Terraform provisions a Snowflake database and warehouse.
2. **Data Ingestion:** The `05_snowflake_cortex_trulen.py` script loads the 10K reports, chunks them, and creates embeddings.
3. **Cortex Search:** A Cortex Search Service is created on the embedded data.
4. **RAG Pipeline:** The Streamlit app takes a user's question, retrieves context using the search service, and generates an answer with a Cortex LLM.
5. **Observability:** TruLens tracks the RAG pipeline's performance and logs the results to Snowflake.

## Contributing

Contributions are welcome! Please feel free to submit a pull request.
