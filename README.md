# BCDI_Space_Mapping

The repository, BCDI_Space_Mapping, contains three scripts that map from detector conjugated space to detector conjugated space (DCS_to_DCS), detector conjugated space to sample space (DCS_to_SS), and sample space to detector conjugated space (SS_to_DCS) for a Bragg Coherent X-ray Diffraction Imaging (BCDI) experiment. It accompanies the following publication https://doi.org/10.1107/S160057751901302X. If this respository was used, please cite this publication in your work.

## Installation

For a complete download, please use GitHub Desktop to pull the repository to your machine. If the .zip file is downloaded, the Reconstruction Examples folder will contain pointer files rather than the actual file. This will prevent the reconstructed shape from being plotted alongside the calculated shape in the demonstration. Regardless, the MATLAB scripts will still be perfectly functional.

## Usage

Using MATLAB, make BCDI_Space_Mapping your working folder. Then, open a script and run it for a demonstration, or type the following into the Command Window:

```matlab
DCS_to_DCS
DCS_to_SS
SS_to_DCS
```
These scripts are fully adaptable to any laboratory-based BCDI experiment. Feel free to build and customize! For specific capabilities, please refer to the comments in each of the files. At the moment, the geometry is based on beamline 34-ID-C at the Advanced Photon Source. If needed, we can help make a plugin for your specific beamline.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
[MIT](https://choosealicense.com/licenses/mit/)

<a href="https://zenodo.org/badge/latestdoi/186435283"><img src="https://zenodo.org/badge/186435283.svg" alt="DOI"></a>
