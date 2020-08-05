# Steam Random Game Picker
This repository holds the front end for my random game picker project.

This project was created as an experiment to demonstrate some proficency creating front-end projects with Vue.js and and Parcel.js.
It is hosted on a virtual Linux server running in the cloud using docker with a CI/CD pipeline that utilizes GitHub Actions, Docker Hub, and [Watchtower](https://github.com/containrrr/watchtower).

The project runs in tandem with a simple Express.js API, located [here](https://github.com/ryuyan-dev/random-game-api).

## Usage

1. Create a .env file at the root of this project that contains the following values
    - `API_URL=http://location-of-api/`
2. Run `npm run dev` to develop locally
3. Run `npm run build` to create dist files for deployment

# Docker Container

To run an instance of this project via docker, run the following command:

```
docker run -d --name random-game-front-end ryuyandev/random-game-front-end
```
