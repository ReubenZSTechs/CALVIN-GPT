import uvicorn

if __name__ == "__main__":
    uvicorn.run(
        "backend.api.app.app:app",
        host="0.0.0.0",
        port=15000,
        reload=False, 
        workers=1,  
        timeout_keep_alive=1400   
    )