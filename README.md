# Video Speed Adjuster

This simple bash script uses `ffmpeg` to adjust the speed of a video and its associated audio without changing the pitch. It works with various video formats, allowing you to speed up or slow down videos by a specified factor. You can use different input and output formats.

## Features

- Adjust video and audio speed by a user-defined factor.
- Preserve the original pitch of the audio.
- Supports a wide range of input and output video formats.

## Requirements

- **ffmpeg**: Ensure `ffmpeg` is installed on your system.

## Usage

```bash
./video-speed.sh input_video output_video speed_factor
```

- **input_video**: Path to the input video file.
- **output_video**: Path to the output video file.
- **speed_factor**: Factor by which to adjust the speed. For example, `1.1` increases speed by 10%, while `0.9` decreases speed by 10%.

### Examples

- **Speed up by 10%**:
  ```bash
  ./video-speed.sh input.mp4 output.mp4 1.1
  ```

- **Slow down by 20%**:
  ```bash
  ./video-speed.sh input.avi output.mkv 0.8
  ```

## License

This project is licensed under the MIT License.
