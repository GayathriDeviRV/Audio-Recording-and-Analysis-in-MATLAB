# Audio-Recording-and-Analysis-in-MATLAB
*Matlab codes to record audio, analyze its time and frequency domains using FFT and DFT*

**Description:**
These MATLAB codes records audio from the default input device, plots the time-domain waveform, computes its Fast Fourier Transform (FFT), Discrete Fourier Transform (DFT), and plots the frequency-domain spectrum. It saves the recorded audio as a .wav file.

**Usage:**
1. Ensure MATLAB is installed on your system.
2. Connect a microphone or ensure an input device is available.
3. Copy the provided script into a MATLAB editor.
4. Modify parameters such as Fs (sampling frequency), Channels, bits, and duration as per your requirements.
5. Run the script in MATLAB.

**Instructions:**
1. Run the MATLAB script fft_analysis.m for fft analysis and dft_analysis.m for dft analysis
2. Follow the on-screen instructions to start and stop recording.
3. After recording, two plots will be displayed: 
    - Time-domain plot showing the waveform of the recorded audio.
    - Frequency-domain plot showing the spectrum of the audio signal.
4. The recorded audio will be saved as `audio1.wav` and `audio2.wav` in the same directory.

**Parameters:**
- `Fs`: Sampling frequency (Hz).
- `Channels`: Number of audio channels (1 for mono, 2 for stereo).
- `bits`: Bit depth of audio recording.
- `duration`: Duration of audio recording in seconds.

**Note:**
- Ensure proper permissions for microphone access if running on a system with restricted access to audio devices.
- Adjust parameters such as `Fs`, `Channels`, `bits`, and `duration` according to your requirements and hardware capabilities.
