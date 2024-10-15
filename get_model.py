"""Prepare the huggingface model for later RAG use."""

import os

from huggingface_hub import snapshot_download

EMBEDDING_MODEL = "sentence-transformers/all-mpnet-base-v2"
MODEL_DIR = "./embeddings_model"

if __name__ == "__main__":
    snapshot_download(repo_id=EMBEDDING_MODEL, local_dir=MODEL_DIR)

    # workaround for https://github.com/UKPLab/sentence-transformers/pull/2460
    os.makedirs(os.path.join(MODEL_DIR, "2_Normalize"), exist_ok=True)
