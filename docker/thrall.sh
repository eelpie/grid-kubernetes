docker run -it -e PLAY_SECRET=************ -e AWS_ACCESS_KEY_ID=*** -e AWS_SECRET_ACCESS_KEY=*** --mount type=bind,source="$(pwd)"/../config/gu,target=/etc/gu --mount type=bind,source="$(pwd)"/../config/grid,target=/etc/grid eu.gcr.io/grid-301122/thrall:containerised

