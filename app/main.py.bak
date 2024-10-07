from dataclasses import dataclass, field

from fastapi import FastAPI, HTTPException, Response

app = FastAPI()


@dataclass
class Channel:
    id: str
    name: str
    tags: list[str] = field(default_factory=list)
    description: str = ""


# DB mock data
channels: dict[str, Channel] = {'1': Channel(id='1', name='Albert Sodel', tags=['Python', 'QA', 'Automation'],
                                             description='Quality Assurance engineer with 10y of experience'),
                                '2': Channel(id='2', name='Adam Hoffmann', tags=['java', 'backend', 'spring'],
                                             description='Java developer with 5y of experience'),
                                '3': Channel(id='3', name='John Doe', tags=['rust', 'embeded'],
                                             description='Embeded systems developer')}


@app.get("/")
def read_root() -> Response:
    return Response("Welcome to FastAPI with JSON data REST.")


@app.get("/channels", response_model=list[Channel])
def read_all_items() -> list[Channel]:
    return list(channels.values())


@app.get("/channels/{channel_id}", response_model=Channel)
def read_item(channel_id: str) -> Channel:
    if channel_id not in channels:
        raise HTTPException(status_code=404, detail="Channel not found")
    return channels[channel_id]
