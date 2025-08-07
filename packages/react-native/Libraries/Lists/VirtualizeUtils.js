/**
 * Copyright (c) Meta Platforms, Inc. and affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *
 * @flow strict-local
 * @format
 */

'use strict';

<<<<<<< HEAD
import {typeof keyExtractor as KeyExtractorType} from '@react-native-macos/virtualized-lists'; // [macOS]
||||||| d4407d6f77a
import {typeof keyExtractor as KeyExtractorType} from '@react-native/virtualized-lists';
=======
import VirtualizedLists from '@react-native/virtualized-lists';
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2

<<<<<<< HEAD
const keyExtractor: KeyExtractorType =
  require('@react-native-macos/virtualized-lists').keyExtractor; // [macOS]

module.exports = {keyExtractor};
||||||| d4407d6f77a
const keyExtractor: KeyExtractorType =
  require('@react-native/virtualized-lists').keyExtractor;

module.exports = {keyExtractor};
=======
type KeyExtractorType = typeof VirtualizedLists.keyExtractor;
export const keyExtractor: KeyExtractorType = VirtualizedLists.keyExtractor;
>>>>>>> 81e490164fd98ea2f89ac62bceae1d0c80464bd2
