# Tensorflow Image Classifier

This project covers tensorflow image classification through an evolution model. It makes use of a docker instance to handle the training and guessing.

## Requirements

- [docker with wsl2](https://docs.docker.com/docker-for-windows/wsl/)

## Usage

Provider a dataset with training images placed in category directories inside a data directory into the root directory of this project to act as a classifier. the classifier could be star wars characters, e.g.:

```sh
 [project-directory]/star-wars-characters/
 [project-directory]/star-wars-characters/data
 [project-directory]/star-wars-characters/data/car
 [project-directory]/star-wars-characters/data/moto
 [project-directory]/star-wars-characters/data/bus
```

## Train

Just type

```sh
 ./train.sh [project-directory]/classifier-directory /path/to/training/images
```

After the train.sh was executed the classifier directory contains a trained model

## Guess

single guesses can be done as follows. parameter 1 is the path to the training data (which contains a trained model now), the second parameter it he path to the unclassified file.

```sh
 ./guess.sh [project-directory]/project_directory /unknown/image.jpg
```

guessing an entire directory can be done as following:

```sh
./guessDir.sh [project-directory]/classifier [project-directory]/srcDir [project-directory]/destDir
```

## Example of result

```sh
# ./guess.sh /synced/tensor-lib/moto-classifier/ /synced/imagesToTest/moto21.jpg
daisy (score = 0.99898)
sunflower (score = 0.00072)
dandelion (score = 0.00024)
tulip (score = 0.00006)
rose (score = 0.00000)
```

Use an absolute file path for classifier and images because the script dos not support relative path (volume mounting)

## Credits

Credit goes to [Xblaster](https://github.com/xblaster) for a lot of inspiration.
