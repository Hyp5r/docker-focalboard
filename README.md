# docker-focalboard
A docker container for Focalboard.

This is a rough draft for me, but after seeing the pull request for a Dockerfile for Focalboard, I wanted to see if I could get one running in the Debian Slim image. Initial testing on this works and was built on a Synology DS920+ with no issues, but more testing is probably needed.

I haven't isolated where the SQLite database is for this, so at this time the container will erase all data if destroyed. This README will be updated as I spend more time on this or someone beats me to it, I just wanted to get a rough draft out and tested.
