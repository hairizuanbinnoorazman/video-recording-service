# video-recording-service
Create a video recording service hosted on server.

# Why build one?
If one is to use the hangouts video conferencing call from Google, there is no native private recording feature. If you intend to have a hangouts session that is to be recorded privately, what you would need to do would be set up your own desktop recording software. One of the options available would be the [OBS Software](https://obsproject.com/).

There are some disadvantages of doing so:
- Dependency that if one is to record videos, one would need to install the required software (won't work out well in the long run)
- If one person is assigned the role of recording videos (won't work out well as now, if that person is on leave, would the recordings be completely stopped?)
- Manual steps to set up recording. The recording software is not everyone's cup of tea but its something that is needed to be done in order to improve the company as a whole

Although we can easily set up process to try to deal with the above situation, we can try to solve it by removing humans from the process as much as possible. We can attempt to automate it as much as we can!

# What's involved?
This is the list of things to experiment:

- ~~Setting up Video Recording on Server~~
- ~~Setting up Video + Audio Recording on Server~~
- Ensure that the Video + Audio Service is smooth for 1 hour of recording (Optimization)
- Setting up architecture backbone (Not yet firmed up)
  - API Service (Google Functions? or Web Service)
  - Queue System (Redis?)
  - Python script to absorb the items from queue system
- Combining it with a chat application (Possibly Slack? - maybe not needed?)
- Automated video file upload from Google Cloud Storage to relevant user's Google Drive

# End Product
Two types of products:
- On demand recording system which can begin recording on demand (Problem is that the )
- Scheduled based recording system that follows a calendar system. What one needs to do would be invite the user to the calendar invite and it will handle the rest by logging in and cutting off accordingly.

# Usage/Setup Instructions
Refer to the USAGE.md instructions.


