import logging
import threading

from fastapi import FastAPI, HTTPException
from fastapi.middleware.cors import CORSMiddleware


logger = logging.getLogger(__name__)
processing_lock = threading.Lock()

app = FastAPI()
app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)