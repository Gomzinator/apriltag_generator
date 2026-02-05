# AprilTags Generator

Images of all tags from all the pre-generated [AprilTag 3](https://github.com/AprilRobotics/apriltags) families. You can generate your own layouts or images of tags.

</br>

## How to use
---
### Setup
Reading the original project of pix, installation suggests that you can simply use pip : https://github.com/pyx-project/pyx/blob/master/INSTALL.md
```
$ pip install pyx
```

### Generate 1x1 AprilTag
```
$ python ./make_tag.py --nx 1 --ny 1 --marginx 0.00 --marginy 0.00 --tsize 0.16 --tspace 0.0 --startid 0 --tfam t36h11 --borderbits 1
```

### Generate 2x2 AprilTags
```
$ python ./make_tag.py --nx 2 --ny 2 --marginx 0.00 --marginy 0.00 --tsize 0.08 --tspace 0.1 --startid 0 --tfam t36h11 --borderbits 1
```
